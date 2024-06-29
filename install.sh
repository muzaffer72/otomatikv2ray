#!/bin/bash

author=muzaffer72
# github=https://github.com/muzaffer72/otomatikv2ray

# bash yazı tipleri renkleri
red='\e[31m'
yellow='\e[33m'
gray='\e[90m'
green='\e[92m'
blue='\e[94m'
magenta='\e[95m'
cyan='\e[96m'
none='\e[0m'
_red() { echo -e ${red}$@${none}; }
_blue() { echo -e ${blue}$@${none}; }
_cyan() { echo -e ${cyan}$@${none}; }
_green() { echo -e ${green}$@${none}; }
_yellow() { echo -e ${yellow}$@${none}; }
_magenta() { echo -e ${magenta}$@${none}; }
_red_bg() { echo -e "\e[41m$@${none}"; }

is_err=$(_red_bg Hata!)
is_warn=$(_red_bg Uyarı!)

err() {
    echo -e "\n$is_err $@\n" && exit 1
}

warn() {
    echo -e "\n$is_warn $@\n"
}

# root
[[ $EUID != 0 ]] && err "Şu anda ${yellow}ROOT kullanıcısı değil.${none}"

# yum veya apt-get, ubuntu/debian/centos
cmd=$(type -P apt-get || type -P yum)
[[ ! $cmd ]] && err "Bu script yalnızca ${yellow}(Ubuntu veya Debian veya CentOS)${none} destekler."

# systemd
[[ ! $(type -P systemctl) ]] && {
    err "Bu sistemde ${yellow}(systemctl)${none} eksik, bu hatayı düzeltmek için şu komutu deneyin:${yellow} ${cmd} update -y;${cmd} install systemd -y ${none}"
}

# wget yüklü mü yoksa değil mi
is_wget=$(type -P wget)

# x64
case $(uname -m) in
amd64 | x86_64)
    is_jq_arch=amd64
    is_core_arch="64"
    ;;
*aarch64* | *armv8*)
    is_jq_arch=arm64
    is_core_arch="arm64-v8a"
    ;;
*)
    err "Bu script yalnızca 64 bit sistemleri destekler..."
    ;;
esac

is_core=v2ray
is_core_name=V2Ray
is_core_dir=/etc/$is_core
is_core_bin=$is_core_dir/bin/$is_core
is_core_repo=v2fly/$is_core-core
is_conf_dir=$is_core_dir/conf
is_log_dir=/var/log/$is_core
is_sh_bin=/usr/local/bin/$is_core
is_sh_dir=$is_core_dir/sh
is_sh_repo=$author/$is_core
is_pkg="wget unzip"
is_config_json=$is_core_dir/config.json
tmp_var_lists=(
    tmpcore
    tmpsh
    tmpjq
    is_core_ok
    is_sh_ok
    is_jq_ok
    is_pkg_ok
)

# geçici dizin
tmpdir=$(mktemp -u)
[[ ! $tmpdir ]] && {
    tmpdir=/tmp/tmp-$RANDOM
}

# değişken kur
for i in ${tmp_var_lists[*]}; do
    export $i=$tmpdir/$i
done

# bash script yükle.
load() {
    . $is_sh_dir/src/$1
}

# wget ekle --no-check-certificate
_wget() {
    [[ $proxy ]] && export https_proxy=$proxy
    wget --no-check-certificate $*
}

# mesaj yazdır
msg() {
    case $1 in
    warn)
        local color=$yellow
        ;;
    err)
        local color=$red
        ;;
    ok)
        local color=$green
        ;;
    esac

    echo -e "${color}$(date +'%T')${none}) ${2}"
}

# yardım mesajı göster
show_help() {
    echo -e "Kullanım: $0 [-f xxx | -l | -p xxx | -v xxx | -h]"
    echo -e "  -f, --core-file <path>          Özel $is_core_name dosya yolu, örneğin, -f /root/${is_core}-linux-64.zip"
    echo -e "  -l, --local-install             Yerel kurulum scripti al, mevcut dizini kullan"
    echo -e "  -p, --proxy <addr>              Proxy kullanarak indir, örneğin, -p http://127.0.0.1:2333 veya -p socks5://127.0.0.1:2333"
    echo -e "  -v, --core-version <ver>        Özel $is_core_name sürümü, örneğin, -v v5.4.1"
    echo -e "  -h, --help                      Bu yardım ekranını göster\n"

    exit 0
}

# bağımlı paketleri yükle
install_pkg() {
    cmd_not_found=
    for i in $*; do
        [[ ! $(type -P $i) ]] && cmd_not_found="$cmd_not_found,$i"
    done
    if [[ $cmd_not_found ]]; then
        pkg=$(echo $cmd_not_found | sed 's/,/ /g')
        msg warn "Bağımlı paketleri yükle >${pkg}"
        $cmd install -y $pkg &>/dev/null
        if [[ $? != 0 ]]; then
            [[ $cmd =~ yum ]] && yum install epel-release -y &>/dev/null
            $cmd update -y &>/dev/null
            $cmd install -y $pkg &>/dev/null
            [[ $? == 0 ]] && >$is_pkg_ok
        else
            >$is_pkg_ok
        fi
    else
        >$is_pkg_ok
    fi
}

# dosya indir
download() {
    case $1 in
    core)
        link=https://github.com/${is_core_repo}/releases/latest/download/${is_core}-linux-${is_core_arch}.zip
        [[ $is_core_ver ]] && link="https://github.com/${is_core_repo}/releases/download/${is_core_ver}/${is_core}-linux-${is_core_arch}.zip"
        name=$is_core_name
        tmpfile=$tmpcore
        is_ok=$is_core_ok
        ;;
    sh)
        link=https://github.com/${is_sh_repo}/releases/latest/download/code.zip
        name="$is_core_name Script"
        tmpfile=$tmpsh
        is_ok=$is_sh_ok
        ;;
    jq)
        link=https://github.com/jqlang/jq/releases/download/jq-1.7.1/jq-linux-$is_jq_arch
        name="jq"
        tmpfile=$tmpjq
        is_ok=$is_jq_ok
        ;;
    esac

    msg warn "${name} indir > ${link}"
    if _wget -t 3 -q -c $link -O $tmpfile; then
        mv -f $tmpfile $is_ok
    fi
}

# sunucu ip'sini al
get_ip() {
    export "$(_wget -4 -qO- https://one.one.one.one/cdn-cgi/trace | grep ip=)" &>/dev/null
    [[ -z $ip ]] && export "$(_wget -6 -qO- https://one.one.one.one/cdn-cgi/trace | grep ip=)" &>/dev/null
}

# arka plan görevlerinin durumunu kontrol et
check_status() {
    # bağımlı paket yükleme başarısız
    [[ ! -f $is_pkg_ok ]] && {
        msg err "Bağımlı paket yükleme başarısız"
        is_fail=1
    }

    # dosya indirme durumu
    if [[ $is_wget ]]; then
        [[ ! -f $is_core_ok ]] && {
            msg err "${is_core_name} indirme başarısız"
            is_fail=1
        }
        [[ ! -f $is_sh_ok ]] && {
            msg err "${is_core_name} script indirme başarısız"
            is_fail=1
        }
        [[ ! -f $is_jq_ok ]] && {
            msg err "jq indirme başarısız"
            is_fail=1
        }
    else
        [[ ! $is_fail ]] && {
            is_wget=1
            [[ ! $is_core_file ]] && download core &
            [[ ! $local_install ]] && download sh &
            [[ $jq_not_found ]] && download jq &
            get_ip
            wait
            check_status
        }
    fi

    # hata durumu bulundu, geçici dizini sil ve çık.
    [[ $is_fail ]] && {
        exit_and_del_tmpdir
    }
}

# parametreleri kontrol et
pass_args() {
    while [[ $# -gt 0 ]]; do
        case $1 in
        online)
            err "Eski sürümü yüklemek istiyorsanız, şu adrese gidin: https://github.com/233boy/v2ray/tree/old"
            ;;
        -f | --core-file)
            [[ -z $2 ]] && {
                err "($1) Gerekli parametre eksik, doğru kullanım örneği: [$1 /root/$is_core-linux-64.zip]"
            } || [[ ! -f $2 ]] && {
                err "($2) düzenli bir dosya değil."
            }
            is_core_file=$2
            shift 2
            ;;
        -l | --local-install)
            [[ ! -f ${PWD}/src/core.sh || ! -f ${PWD}/$is_core.sh ]] && {
                err "Mevcut dizin (${PWD}) eksik script dizini."
            }
            local_install=1
            shift 1
            ;;
        -p | --proxy)
            [[ -z $2 ]] && {
                err "($1) Gerekli parametre eksik, doğru kullanım örneği: [$1 http://127.0.0.1:2333 veya -p socks5://127.0.0.1:2333]"
            }
            proxy=$2
            shift 2
            ;;
        -v | --core-version)
            [[ -z $2 ]] && {
                err "($1) Gerekli parametre eksik, doğru kullanım örneği: [$1 v1.8.1]"
            }
            is_core_ver=v${2#v}
            shift 2
            ;;
        -h | --help)
            show_help
            ;;
        *)
            echo -e "\n${is_err} ($@) bilinmeyen parametre...\n"
            show_help
            ;;
        esac
    done
    [[ $is_core_ver && $is_core_file ]] && {
        err "${is_core_name} sürümünü ve ${is_core_name} dosyasını aynı anda özelleştiremezsiniz."
    }
}

# çık ve geçici dizini sil
exit_and_del_tmpdir() {
    rm -rf $tmpdir
    [[ ! $1 ]] && {
        msg err "Oh hayır.."
        msg err "Kurulum sırasında bir hata oluştu..."
        echo -e "Sorunu bildir) https://github.com/${is_sh_repo}/issues"
        echo
        exit 1
    }
    exit
}

# ana
main() {

    # eski sürümü kontrol et
    [[ -f $is_sh_bin && -d $is_core_dir/bin && -d $is_sh_dir && -d $is_conf_dir ]] && {
        err "Scriptin yüklü olduğu tespit edildi, yeniden yüklemek için ${green} ${is_core} reinstall ${none} komutunu kullanın."
    }

    # parametreleri kontrol et
    [[ $# -gt 0 ]] && pass_args $@

    # hoş geldin mesajı göster
    clear
    echo
    echo "........... $is_core_name script by $author .........."
    echo

    # kurulum başlıyor...
    msg warn "Kurulum başlıyor..."
    [[ $is_core_ver ]] && msg warn "${is_core_name} sürümü: ${yellow}$is_core_ver${none}"
    [[ $proxy ]] && msg warn "Proxy kullanılıyor: ${yellow}$proxy${none}"
    # geçici dizin oluştur
    mkdir -p $tmpdir
    # eğer is_core_file varsa, dosyayı kopyala
    [[ $is_core_file ]] && {
        cp -f $is_core_file $is_core_ok
        msg warn "${yellow}${is_core_name} dosyası kullanılıyor > $is_core_file${none}"
    }
    # yerel dizin scripti yükle
    [[ $local_install ]] && {
        >$is_sh_ok
        msg warn "${yellow}Yerel kurulum scripti al > $PWD ${none}"
    }

    timedatectl set-ntp true &>/dev/null
    [[ $? != 0 ]] && {
        msg warn "${yellow}\e[4mUyarı!!! Otomatik saat senkronizasyonu ayarlanamadı, bu VMess protokolünü kullanmayı etkileyebilir.${none}"
    }

    # bağımlı paketleri yükle
    install_pkg $is_pkg &

    # jq
    if [[ $(type -P jq) ]]; then
        >$is_jq_ok
    else
        jq_not_found=1
    fi
    # eğer wget yüklüyse, core, sh, jq indir, ip al
    [[ $is_wget ]] && {
        [[ ! $is_core_file ]] && download core &
        [[ ! $local_install ]] && download sh &
        [[ $jq_not_found ]] && download jq &
        get_ip
    }

    # arka plan görevlerinin tamamlanmasını bekliyor
    wait

    # arka plan görevlerinin durumunu kontrol et
    check_status

    # is_core_file'ı test et
    if [[ $is_core_file ]]; then
        unzip -qo $is_core_ok -d $tmpdir/testzip &>/dev/null
        [[ $? != 0 ]] && {
            msg err "${is_core_name} dosyası testi geçemedi."
            exit_and_del_tmpdir
        }
        for i in ${is_core} geoip.dat geosite.dat; do
            [[ ! -f $tmpdir/testzip/$i ]] && is_file_err=1 && break
        done
        [[ $is_file_err ]] && {
            msg err "${is_core_name} dosyası testi geçemedi."
            exit_and_del_tmpdir
        }
    fi

    # sunucu ip'sini al.
    [[ ! $ip ]] && {
        msg err "Sunucu IP'si alınamadı."
        exit_and_del_tmpdir
    }

    # sh dizinini oluştur...
    mkdir -p $is_sh_dir

    # sh dosyasını kopyala veya sh zip dosyasını aç.
    if [[ $local_install ]]; then
        cp -rf $PWD/* $is_sh_dir
    else
        unzip -qo $is_sh_ok -d $is_sh_dir
    fi

    # core bin dizinini oluştur
    mkdir -p $is_core_dir/bin
    # core dosyasını kopyala veya core zip dosyasını aç
    if [[ $is_core_file ]]; then
        cp -rf $tmpdir/testzip/* $is_core_dir/bin
    else
        unzip -qo $is_core_ok -d $is_core_dir/bin
    fi

    # alias ekle
    echo "alias $is_core=$is_sh_bin" >>/root/.bashrc

    # core komutu
    ln -sf $is_sh_dir/$is_core.sh $is_sh_bin

    # jq
    [[ $jq_not_found ]] && mv -f $is_jq_ok /usr/bin/jq

    # chmod
    chmod +x $is_core_bin $is_sh_bin /usr/bin/jq

    # log dizinini oluştur
    mkdir -p $is_log_dir

    # bir ipucu mesajı göster
    msg ok "Yapılandırma dosyası oluşturuluyor..."

    # systemd hizmeti oluştur
    load systemd.sh
    is_new_install=1
    install_service $is_core &>/dev/null

    # conf dizinini oluştur
    mkdir -p $is_conf_dir

    load core.sh
    # bir tcp yapılandırması oluştur
    add tcp
    # geçici dizini sil ve çık.
    exit_and_del_tmpdir ok
}

# başla.
main $@
