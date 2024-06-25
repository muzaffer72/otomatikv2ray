Tanıtım

En iyi V2Ray tek tıklama kurulum ve yönetim scripti
Özellikler

    Hızlı kurulum
    Süper kullanışlı
    Sıfır öğrenme maliyeti
    Otomatik TLS
    Tüm süreçleri basitleştirme
    BT engelleme
    Çin IP'lerini engelleme
    API ile işlem yapma
    V2Ray komutlarıyla uyumlu
    Güçlü hızlı parametreler
    Tüm yaygın protokolleri destekleme
    Tek tıklamayla Shadowsocks ekleme
    Tek tıklamayla VMess-(TCP/mKCP/QUIC) ekleme
    Tek tıklamayla VMess-(WS/H2/gRPC)-TLS ekleme
    Tek tıklamayla VLESS-(WS/H2/gRPC)-TLS ekleme
    Tek tıklamayla Trojan-(WS/H2/gRPC)-TLS ekleme
    Tek tıklamayla VMess-(TCP/mKCP/QUIC) dinamik port ekleme
    Tek tıklamayla BBR etkinleştirme
    Tek tıklamayla maskeleme sitesini değiştirme
    Tek tıklamayla (port/UUID/şifre/alan adı/yol/şifreleme yöntemi/SNI/dinamik port vs.) değiştirme
    Ve daha fazlası...

Tasarım Prensibi

Tasarım prensibi: yüksek verimlilik, süper hızlı, son derece kullanışlı

Bu script, yazarın kendi kullanım ihtiyaçları doğrultusunda, birden fazla konfigürasyonun aynı anda çalışmasını merkeze alarak tasarlandı.

Ek olarak, ekleme, değiştirme, görüntüleme ve silme gibi dört yaygın fonksiyonu özel olarak optimize etti.

Tek bir komutla ekleme, değiştirme, görüntüleme, silme gibi işlemleri gerçekleştirebilirsiniz.

Örneğin, bir konfigürasyon eklemek sadece 1 saniyeden az sürer! Anında ekleme tamamlanır! Diğer işlemler de aynı şekilde!

Scriptin parametreleri son derece verimlidir ve kullanımı çok kolaydır, lütfen parametreleri kullanmayı öğrenin.
Script Açıklaması

V2Ray tek tıklama kurulum scripti
Kurulum Kılavuzu

V2Ray kurulum detaylı görsel kılavuz
Yardım

Kullanım: v2ray help

```
V2Ray script v4.21 by 233boy

Kullanım: v2ray [seçenekler]... [argümanlar]...
Temel:

    v, version Mevcut sürümü gösterir
    ip Mevcut ana bilgisayarın IP'sini döndürür
    get-port Kullanılabilir bir port döndürür

Genel:

    a, add [protocol] [args... | auto] Konfigürasyon ekler
    c, change [name] [option] [args... | auto] Konfigürasyonu değiştirir
    d, del [name] Konfigürasyonu siler**
    i, info [name] Konfigürasyonu görüntüler
    qr [name] QR kod bilgisini gösterir
    url [name] URL bilgisini gösterir
    log Günlüğü görüntüler
    logerr Hata günlüğünü görüntüler

Değişiklik:

    dp, dynamicport [name] [start | auto] [end] Dinamik portu değiştirir
    full [name] [...] Birden fazla parametreyi değiştirir
    id [name] [uuid | auto] UUID'yi değiştirir
    host [name] [domain] Alan adını değiştirir
    port [name] [port | auto] Portu değiştirir
    path [name] [path | auto] Yolu değiştirir
    passwd [name] [password | auto] Şifreyi değiştirir
    type [name] [type | auto] Maskeleme türünü değiştirir
    method [name] [method | auto] Şifreleme yöntemini değiştirir
    seed [name] [seed | auto] mKCP seed'i değiştirir
    new [name] [...] Protokolü değiştirir
    web [name] [domain] Maskeleme web sitesini değiştirir

İleri Düzey:

    dns [...] DNS ayarları
    dd, ddel [name...] Birden fazla konfigürasyonu siler**
    fix [name] Bir konfigürasyonu düzeltir
    fix-all Tüm konfigürasyonları düzeltir
    fix-caddyfile Caddyfile'ı düzeltir
    fix-config.json config.json dosyasını düzeltir

Yönetim:

    un, uninstall Kaldırır
    u, update [core | sh | dat | caddy] [ver] Günceller
    U, update.sh Scripti günceller
    s, status Çalışma durumunu gösterir
    start, stop, restart [caddy] Başlatır, durdurur, yeniden başlatır
    t, test Test çalıştırır
    reinstall Scripti yeniden yükler

Test:

    client [name] İstemci için JSON gösterir, sadece referans için
    debug [name] Bazı debug bilgilerini gösterir, sadece referans için
    gen [...] add ile aynı, ama sadece JSON içeriğini gösterir, dosya oluşturmaz, test için kullanılır
    genc [name] İstemci için kısmı JSON gösterir, sadece referans için
    no-auto-tls [...] add ile aynı, ama TLS otomatik yapılandırmayı devre dışı bırakır, *TLS ilgili protokoller için kullanılabilir
    xapi [...] v2ray api ile aynı, ama API backend olarak çalışan mevcut V2Ray hizmetini kullanır

Diğer:

    bbr BBR etkinleştirir, eğer destekleniyorsa
    bin [...] V2Ray komutunu çalıştırır, örneğin: v2ray bin help
    api, convert, tls, run, uuid [...] V2Ray komutlarıyla uyumlu
    h, help Bu yardım ekranını gösterir

del, ddel seçeneklerini dikkatli kullanın, bu seçenekler doğrudan konfigürasyonu siler; onay gerekmez.
Geri bildirim) https://github.com/233boy/v2ray/issues
Dokümantasyon (doc) https://233boy.com/v2ray/v2ray-script/



V2Ray için en iyi tek tıklamayla kurulum komut dosyası
2018-01-28 22:20

En iyi V2Ray tek tıklamayla kurulum komut dosyası ve yönetim komut dosyası
tanıtmak

En iyi V2Ray betiği

Github adresi: https://github.com/233boy/v2ray/tree/master
Özellikler

    Hızlı kurulum
    Kullanımı son derece kolay
    Sıfır öğrenme maliyeti
    Otomatik TLS
    Tüm süreçleri basitleştirin
    BT'yi engelle
    Çin IP'sini engelle
    API işlemlerini kullanın
    V2Ray komutlarıyla uyumlu
    Güçlü kısayol parametreleri
    Tüm yaygın protokolleri destekler
    Tek tıklamayla Shadowsocks ekleyin
    Tek tıklamayla VMess-(TCP/mKCP/QUIC) ekleyin
    Tek tıklamayla VMess-(WS/H2/gRPC)-TLS'yi ekleyin
    Tek tıklamayla VLESS-(WS/H2/gRPC)-TLS'yi ekleyin
    Tek tıklamayla Trojan-(WS/H2/gRPC)-TLS'yi ekleyin
    Tek tıklamayla VMess-(TCP/mKCP/QUIC) dinamik bağlantı noktasını ekleyin
    Tek tıklamayla BBR'yi etkinleştirin
    Sahte web sitesini tek tıklamayla değiştirin
    Tek tıklamayla değişiklik (bağlantı noktası/UUID/şifre/etki alanı adı/yol/şifreleme yöntemi/SNI/dinamik bağlantı noktası/vb...)
    fazlası var…

tasarım konsepti

Tasarım konsepti şu şekildedir: yüksek verimlilik, ultra hızlı ve kullanımı son derece kolay.

Komut dosyası, yazarın kendi kullanım gereksinimlerine dayanmaktadır ve aynı anda çalışan birden fazla yapılandırmayla tasarlanmıştır. temel tasarım olarak

Ayrıca dört ortak işlev olan ekleme, değiştirme, görüntüleme ve silme için özel olarak optimize edilmiştir.

Ekleme, değiştirme, görüntüleme, silme vb. işlemleri tamamlamak için yalnızca tek bir komuta ihtiyacınız vardır.

Örneğin bir konfigürasyonun eklenmesi 1 saniyeden az sürer! Anında ekleyin! Aynı şey diğer operasyonlar için de geçerli!

Komut dosyasının parametreleri çok verimlidir ve kullanımı son derece kolaydır. Lütfen parametrelerin kullanımında ustalaşın.

Lütfen betiğin parametre kullanımını dikkatlice okuyun ve bunun ne kadar harika olabileceğini göreceksiniz.
Desteklenen protokol listesi

    VMess-TCP
    VMess-mKCP
    VMess-QUIC
    VMess-H2-TLS
    VMess-WS-TLS
    VMess-gRPC-TLS
    VLESS-H2-TLS
    VLESS-WS-TLS
    VLESS-gRPC-TLS
    Truva Atı-H2-TLS
    Truva Atı-WS-TLS
    Trojan-gRPC-TLS
    Gölge çorapları
    VMess-TCP-dinamik bağlantı noktası
    VMess-mKCP-dinamik bağlantı noktası
    VMess-QUIC-dinamik bağlantı noktası

Havaalanı önerileri

Sadece bir duvar inşa etmeniz gerekiyorsa, havaalanından bir tane satın alabilirsiniz. Kendiniz bir şey inşa etmenize gerek kalmaz, bu da sizi endişeden ve çabadan kurtarır.

Havaalanı önerisi: Just My Socks

Just My Socks, Bricklayer tarafından sağlanan bir Shadowsocks & V2Ray hizmetidir. Çinli olmayan işletmelerin IP'nin engellenmesi konusunda endişelenmesine gerek yoktur.

Eğitimi satın alın: Just My Socks Detaylı Resim ve Metin Satın Alma Eğitimi
şarkı kutusu komut dosyası (önerilir)

REALITY, TUIC, Trojan, Hysteria2 ve diğer protokoller gibi daha fazla protokolü desteklemek için şarkı kutusu komut dosyasının kullanılması tavsiye edilir.

    Lütfen bakınız: Şarkı kutusu için en iyi tek tıklamayla kurulum komut dosyası 

V2ray betiği yerine sing-box betiğini kullanabilirsiniz.
Yapı öğreticisi

Acemiyseniz lütfen okuyun: V2Ray tek tıklamayla yapım ayrıntılı grafik eğitimi
Düzenlemek

Sistem desteği: Ubuntu, Debian, CentOS, Ubuntu 22 önerilir, CentOS'u dikkatli kullanın, script düzgün çalışmayabilir!

Aşağıdaki komutu yürütün:

bash <(wget -qO- -o- https://git.io/v2ray.sh)

Yükleme tamamlandı

Yukarıdaki kurulum komutunu çalıştırdığınızda ve herhangi bir hata mesajı gelmediğinde aşağıdakine benzer bir resim göreceksiniz.
V2Ray komut dosyası kurulumu tamamlandı

Komut dosyası, kurulum süresini tespit etmek için geri bildirim sağlamak üzere özel olarak bir zaman ekranı oluşturur...

Teorik olarak çoğu durumda kurulum 15 saniye içinde tamamlanır ve koşullar uygunsa kurulum yalnızca bir saniyede tamamlanabilir!

15 saniyeyi aşarsa VPS'ye geçmeyi düşünmelisiniz. Bricklayer VPS kullanmanız önerilir.

Hızlı kullanımınızı kolaylaştırmak için komut dosyası, kurulum tamamlandıktan sonra otomatik olarak bir VMess-TCP yapılandırması oluşturacaktır.

Bu noktada URL'yi ilgili yazılıma (v2rayN gibi) kopyalayarak normal çalışıp çalışmadığını test edebilirsiniz.

İşe yaramazsa kullanmayı deneyin v2ray add ssTekrar test etmek için bir SS ekleyin
Eski yapılandırmayı geri yükle

V2Ray betiğimi daha önce yüklediyseniz lütfen kurulum tamamlandıktan sonra SSH bağlantısını kesin, SSH'de tekrar oturum açın ve ardından v2ray

Daha sonra, eski konfigürasyonu mükemmel bir şekilde geri yükleyebilecek eski konfigürasyonun geri yüklenmesi gibi istemler olacaktır.

是否恢复旧配置:

1) 删除旧配置
2) 恢复: VLESS_WebSocket_TLS

请选择 [1-2]:

Ancak bir seçim yapmalısınız: ya eski yapılandırmayı geri yükleyin ya da eski yapılandırmayı silin.

是否删除旧配置? [y]:

Eski yapılandırma geri yüklenemezse tek seçenek eski yapılandırmayı silmektir.

Diğer hatırlatmalar, daha önce kullanılan protokol *TLS ise ve Caddy, TLS'yi otomatik olarak tamamlamak için kullanıldıysa, eski konfigürasyon geri yüklenirken Caddy sürümü en son sürüme yükseltilecek ve yedeklenecektir. /etc/caddy/Caddyfiledosyalar ve /etc/caddy/sites İçindekiler

Yedekleme adı: /etc/caddy/Caddyfile.233.bakdosyalar ve /etc/caddy/sites.233.bak İçindekiler

Bu yedekleme, Caddy sürümünün çok eski olmasını, yapılandırma dosyası hatalarına neden olmasını ve başlatılamamasını önlemek içindir.

eğer içeride olsaydın /etc/caddy/sitesDizin diğer web sitesi yapılandırmalarını dikkate almaz. Lütfen eski yapılandırmayı geri yükleyin ve ardından manuel olarak kontrol edin. sites.233.bakDizin yapılandırma uyumluluğu ve ardından yeniden yerleştirme sitesdizini, ardından Caddy'yi yeniden başlatın ve kullanabilirsiniz. v2ray restart caddyCaddy'yi yeniden başlat
Admin Paneli

Kurulum tamamlandıktan sonra girin v2rayAşağıdaki resimde görüldüğü gibi yönetim panelini göreceksiniz.
V2Ray komut dosyası yönetim paneli

İpucu; herhangi bir işlevi gerçekleştirmek istemiyorsanız Enter'a basın ve çıkmak için Enter'a basın.
müsait değil

Kullanılamamasının genel olarak iki nedeni vardır. Biri portun bağlanamaması, diğeri ise istemci çekirdeği desteğinde sorun olmasıdır.

VPS'nizde harici bir güvenlik duvarı varsa bağlantı noktalarını açtığınızdan emin olun.

Bağlantı noktasının bağlanıp bağlanamayacağını test edin:

Açın: https://tcp.ping.pe/

VPS IP'nizi ve bağlantı noktanızı yazın; içerik ip:port'tur, örnek: 1.1.1.1:443ardından tıklayın GoVeya sadece Enter'a basın;

Başarılı görünüyorsa portun bağlanabileceği anlamına gelir; başarısız görünüyorsa portun bağlanamadığı anlamına gelir.

Hatırlatma olarak şunları kullanabilirsiniz: v2ray ipVPS IP'sini görüntüleyin.

Güvenlik duvarını kapatın ve aşağıdaki komutu yürütün:

systemctl stop firewalld; systemctl disable firewalld; ufw disable

Güvenlik duvarını kapattıktan sonra bağlantı noktasının açık olup olmadığını test edin. Değilse, kapalı olmayan bir harici güvenlik duvarınız olabilir ve normal kullanım için bağlantı noktasına bağlanabilmeniz gerekir .

Bağlantı noktasına bağlanabiliyorsanız devam edin

kullanmak v2ray add ssNormal şekilde kullanılıp kullanılamayacağını görmek için bir SS ekleyin. Normal şekilde kullanılıyorsa, çalışmada herhangi bir sorun olmadığını kanıtlar.

Hatırlatma, varsayılan olarak yüklenen V2Ray çekirdeği en son sürümdür

Eğer kullanılamıyorsa istemcinizin çekirdeği çok eski olabilir.

Lütfen test için v2rayN, vb. gibi farklı istemciler kullanmayı deneyin;

Lütfen VMessAEAD'i ayarlamayı deneyin; bazı istemcilerde ilgili seçenekler bulunur

Bazı istemcilerin gereksiz Apple bilgileri gibi ek kimliği (alterid) 0 olarak doldurması gerekir;

Birinci çözüm, lütfen sunucu tarafındaki çekirdek sürümünü düşürmeyi deneyin

kullanmak v2ray update core 4.45.2Sadece sürüm düşürün

2. Çözüm: İstemci çekirdeğini yükseltin

    Lütfen istemci çekirdeğini ve sunucu çekirdeğini tutarlı tutmaya çalışın! 5'in altındaki çekirdek sürümleri açıklanamayan sorunlara neden olabilir. 

Hızlı başlangıç

V2Ray betiği birçok işlemi basitleştirir Örneğin, yaygın olarak kullandığımız (ekleme, değiştirme, görüntüleme, silme) yapılandırması, kullanıma hızlı bir şekilde hakim olmanızı sağlar.

Yapılandırma ekle:

    v2ray add-> Yapılandırma ekle

    v2ray add ss-> Shadowsocks yapılandırması ekleyin

    v2ray add tcp-> VMess-TCP yapılandırması ekleyin

    v2ray add kcpd-> VMess-mKCP-dinamik bağlantı noktası dinamik bağlantı noktası yapılandırmasını ekleyin 

Not, kullanın v2ray addYapılandırma eklenirken *TLS ile ilgili protokol yapılandırması için yalnızca alan adı sağlanmalıdır ve diğer her şey otomatik olarak işlenebilir.

Daha fazla parametre ekleme kullanımı görmek için lütfen aşağıdaki ekleme açıklamasını görüntüleyin

–

Yapılandırmayı değiştir:

    v2ray change-> Yapılandırmayı değiştir

    v2ray change tcp-> TCP ile ilgili yapılandırmaları değiştirin

    v2ray change tcp port auto-> TCP ile ilgili konfigürasyonun portunu değiştirin. Port otomatik olarak oluşturulur veya kullanılabilir. v2ray port tcp auto

    v2ray change kcp id auto-> mKCP ile ilgili konfigürasyonun UUID'sini değiştirin. UUID otomatik olarak oluşturulur veya kullanılabilir. v2ray id tcp auto

Değişiklik parametresinin daha fazla kullanımını görmek için lütfen aşağıdaki değişiklik açıklamasını görüntüleyin

–

Yapılandırmayı görüntüle:

    v2ray info-> Yapılandırmayı görüntüle

    v2ray info tcp-> TCP ile ilgili yapılandırmaları görüntüleyin

    v2ray info kcp-> kcp ile ilgili yapılandırmaları görüntüleyin 

–

Yapılandırmayı sil:

    v2ray del-> Yapılandırmayı sil

    v2ray del kcp-> KCP ile ilgili yapılandırmaları silin

    v2ray del tcp-> TCP ile ilgili yapılandırmaları silin 

Hatırlatma, del parametresini dikkatli kullanın

–

Çok havalı! En sık kullanılan işlevlere hakim oldunuz (ekleme, değiştirme, görüntüleme, silme)

ekle/değiştir/bilgi/del: ekle, değiştir, görüntüle, sil

Çoğu kullanıcı için

kullanmak v2ray addYapılandırma eklemek için şunu kullanın: v2ray change v2ray info v2ray delYapılandırmak için (değiştir, görüntüle, sil) öğesine tıklamanız yeterlidir.

    Hatırlatma, yalnızca bir konfigürasyon eşleşirse konfigürasyon otomatik olarak seçilecektir. Aksi takdirde eşleşen konfigürasyonların bir listesi görüntülenecek ve konfigürasyonlardan birini seçmeniz istenecektir. 

eklemek

Add parametresi yapılandırma eklemek için kullanılır

Not: isteğe bağlı parametrelerde kullanılır autoBunun yerine betiğin ilgili parametreleri otomatik olarak işlemesine izin verin.

kullanım: v2ray add [protocol] [args... | auto]

Örnek:

    v2ray add
    v2ray add h2
    v2ray add ws
    v2ray add ss
    v2ray add tcp
    v2ray add kcpd

Hatırlatma, ne zaman 可选参数Mevcut olmadığında varsayılan olarak otomatik olur ve yalnızca *TLS protokolüyle yapılandırılan alan adları otomatik olarak işlenemez.

Örneğin, v2ray add tcpeşittir v2ray add tcp auto auto auto

–

İsteğe bağlı parametreler aşağıdaki şekilde detaylandırılmıştır:

Shadowsocks yapılandırması ekleme
İsteğe bağlı parametreler: bağlantı noktası, şifre, şifreleme yöntemi
kullanım: v2ray add ss [port] [password] [method]
Örnek:

    v2ray add ss

    v2ray add ss 233 233boy aes-128-gcm-> 233 numaralı bağlantı noktasını, 233boy.com şifresini, aes-128-gcm şifreleme yöntemini kullanın 

–

Socks yapılandırması ekleme
İsteğe bağlı parametreler: bağlantı noktası, şifre, şifreleme yöntemi
kullanım: v2ray add socks [port] [username] [password]
Örnek:

    v2ray add socks

    v2ray add socks 233 233boy 233boy.com-> 233 numaralı bağlantı noktasını, 233boy kullanıcı adını, 233boy.com şifresini kullanın 

–

VMess-(TCP/mKCP/QUIC) yapılandırması ekleme
İsteğe bağlı parametreler: bağlantı noktası, UUID, maskeli balo türü
kullanım: v2ray add [tcp | kcp | quic] [port] [uuid] [type]
Örnek:

    v2ray add tcp-> VMess-TCP yapılandırması ekleyin

    v2ray add kcp-> VMess-mKCP yapılandırması ekleyin

    v2ray add quic-> VMess-QUIC yapılandırması ekleyin

    v2ray add tcp 233 auto http-> Bağlantı noktası için 233'ü ve kamuflaj türü için http'yi kullanın.

    v2ray add kcp 234 auto dtls-> Bağlantı noktası için 234'ü ve kamuflaj türü için dtls'yi kullanın

    v2ray add quic 235 auto wechat-video-> Bağlantı noktası için 235'i ve kamuflaj türü için wechat-video'yu kullanın 

–

VMess-(TCP/mKCP/QUIC) dinamik bağlantı noktası yapılandırması ekleme
İsteğe bağlı parametreler: bağlantı noktası, UUID, maskeleme türü, dinamik başlangıç ​​bağlantı noktası, dinamik bitiş bağlantı noktası
kullanım: v2ray add [tcpd | kcpd | quicd] [port] [uuid] [type] [start] [end]
Örnek:

    v2ray add tcpd-> VMess-TCP dinamik bağlantı noktası yapılandırmasını ekleyin

    v2ray add kcpd-> VMess-mKCP dinamik bağlantı noktası yapılandırmasını ekleyin

    v2ray add quicd-> VMess-QUIC dinamik bağlantı noktası yapılandırmasını ekleyin

    v2ray add tcpd 223 auto http 2333 3333-> Bağlantı noktası için 233'ü, kamuflaj türü için http'yi ve dinamik bağlantı noktası için 2333-3333'ü kullanın.

    v2ray add kcpd auto auto dtls 2333 2444-> Kamuflaj tipi, dinamik bağlantı noktası 2333-2444 için dtls kullanın

    v2ray add quicd 456 auto dtls 4567 5678-> Bağlantı noktası için 456'yı, kamuflaj türü için dtls'yi ve dinamik bağlantı noktası için 4567-5678'i kullanın. 

–

VMess-(WS/H2/gRPC)-TLS yapılandırması ekleme
İsteğe bağlı parametreler: alan adı, UUID, yol
kullanım: v2ray add [ws | h2 | grpc] [host] [uuid] [path]
Örnek:

    v2ray add ws-> VMess-WS-TLS yapılandırması ekleyin

    v2ray add h2-> VMess-H2-TLS yapılandırması ekleyin

    v2ray add grpc-> VMess-gRPC-TLS yapılandırması ekleyin

    v2ray add ws 233boy.com-> Alan adı 233boy.com

    v2ray add h2 233boy.com auto /h2-> Alan adı olarak 233boy.com'u ve yol olarak /h2'yi kullanın

    v2ray add grpc 233boy.com auto /grpc-> Alan adı olarak 233boy.com'u ve yol olarak /grpc'yi kullanın 

–

VLESS-(WS/H2/gRPC)-TLS yapılandırması ekleme
İsteğe bağlı parametreler: alan adı, UUID, yol
kullanım: v2ray add [vws | vh2 | vgrpc] [host] [uuid] [path]
Örnek:

    v2ray add vws-> VLESS-WS-TLS yapılandırması ekleyin

    v2ray add vh2-> VLESS-H2-TLS yapılandırması ekleyin

    v2ray add vgrpc-> VLESS-gRPC-TLS yapılandırması ekleyin

    v2ray add vws 233boy.com-> Alan adı 233boy.com

    v2ray add vh2 233boy.com auto /h2-> Alan adı olarak 233boy.com'u ve yol olarak /h2'yi kullanın

    v2ray add vgrpc 233boy.com auto /grpc-> Alan adı olarak 233boy.com'u ve yol olarak /grpc'yi kullanın 

–

Trojan-(WS/H2/gRPC)-TLS yapılandırması ekleme
İsteğe bağlı parametreler: alan adı, UUID, yol
kullanım: v2ray add [tws | th2 | tgrpc] [host] [uuid] [path]
Örnek:

    v2ray add tws-> Trojan-WS-TLS yapılandırmasını ekleyin

    v2ray add th2-> Trojan-H2-TLS yapılandırmasını ekleyin

    v2ray add tgrpc-> Trojan-gRPC-TLS yapılandırmasını ekleyin

    v2ray add tws 233boy.com-> Alan adı 233boy.com

    v2ray add th2 233boy.com auto /h2-> Alan adı olarak 233boy.com'u ve yol olarak /h2'yi kullanın

    v2ray add tgrpc 233boy.com auto /grpc-> Alan adı olarak 233boy.com'u ve yol olarak /grpc'yi kullanın 

–

hatırlatmak, v2ray add [protocol] ile ilgili protocolAyrıca tam protokol adını da değiştirebilirsiniz. Ad için yukarıdaki desteklenen protokol listesine bakın.

Örneğin, v2ray add Shadowsocks Ve v2ray add ssAynıdır, ancak elbette basit ve hatırlanması kolay, basitleştirilmiş bir ad kullanmak daha iyidir.

Bir kez daha, isteğe bağlı parametreler mevcut olmadığında, bunlar varsayılan olarak otomatik olarak işlenir (bir etki alanı adı sağlaması gereken *TLS yapılandırması hariç). Gerekli değilse, isteğe bağlı parametrelerin kullanımını atlayabilirsiniz.

Bu nedenle çoğu durumda bir sözleşme eklemeniz yeterlidir, örneğin: v2ray add tcp， v2ray add kcp， v2ray add kcpd
otomatik-tls yok

no-auto-tls parametresi add parametresiyle aynı kullanıma sahiptir ancak TLS'nin otomatik yapılandırılmasını engeller ve *TLS ile ilgili protokoller için kullanılabilir.

kullanım: v2ray no-auto-tls [protocol] [args... | auto]

Örnek:

    v2ray no-auto-tls
    v2ray no-auto-tls ws
    v2ray no-auto-tls vh2 233boy.com
    v2ray no-auto-tls tgrpc 233boy.com

Hatırlatma, TLS'yi manuel olarak yapılandırmak istiyorsanız, örneğin TLS'yi NGINX ile uygulamak istiyorsanız lütfen bu seçeneği kullanın.

Yardım açıklaması: V2Ray betiği no-auto-tls parametresi yardım açıklaması
[isim]

Şu anda 233 VMess-TCP yapılandırmanız varsa, bunlardan birini hızlı bir şekilde nasıl seçeceğinizi hayal edin.

Birden fazla konfigürasyonunuz olduğunda kullanabilirsiniz [name]Anahtar kelimeler, hızlı yürütme amacıyla ilgili yapılandırmaları eşleştirmek için kullanılır. 更改，查看，删除İşlemleri bekleyin

Tavsiye edilen kullanım 端口 veya 域名eşleştirmek, ilgili konfigürasyonların filtrelenmesini kolaylaştırır.

Neyin kullanılacağını görmek için lütfen aşağıyı okuyun [name]Örnekleri

    Hatırlatma, yalnızca bir konfigürasyon eşleşirse konfigürasyon otomatik olarak seçilecektir. Aksi takdirde eşleşen konfigürasyonların bir listesi görüntülenecek ve konfigürasyonlardan birini seçmeniz istenecektir. 

değiştirmek

Change parametresi konfigürasyonu değiştirmek için kullanılır.

kullanım: v2ray change [name] [option] [args... | auto]

Hatırlatma: Farklı konfigürasyonlar, değişikliklerle ilgili farklı seçenekler sunar.

[seçenek] Ad ve seçenek açıklama parametreleri aşağıdaki gibidir:
isim 	İsteğe bağlı parametreler 	kullanmak 	Oto
dp, dinamik bağlantı noktası 	[başlangıç] [bitiş] 	Dinamik bağlantı noktasını değiştir 	Evet
tam dolu 	[…] 	Birden fazla parametreyi değiştirin 	diğer
İD 	[uuid] 	UUID'yi değiştir 	Evet
ev sahibi 	[ihtisas] 	Alan adını değiştir 	-
liman 	[liman] 	Bağlantı noktasını değiştir 	Evet
yol 	[yol] 	Yolu değiştir 	Evet
şifre 	[şifre] 	şifre değiştir 	Evet
tip 	[tip] 	Kılık değiştirme türünü değiştir 	Evet
yöntem 	[yöntem] 	Şifreleme yöntemini değiştir 	Evet
tohum 	[tohum] 	mKCP tohumunu değiştir 	Evet
yeni 	[…] 	Sözleşmeyi Değiştir 	diğer
ağ 	[ihtisas] 	Gizlenmiş web sitesini değiştir 	-

Otomatik'i destekliyorsanız ilgili parametreleri otomatik olarak değiştirmek için isteğe bağlı parametreleri otomatik olarak ayarlayabileceğinizi unutmayın.

Otomatik diğer ise, lütfen isteğe bağlı parametreler için parametre ekleme kullanımına bakın. v2ray add 当前协议 [...], yeni buna benzer v2ray add [...]

Örnek:

    v2ray change-> Yapılandırmayı değiştir

    v2ray change tcp-> TCP ile ilgili bir yapılandırmayı değiştirin

    v2ray change tcp port 233-> TCP yapılandırmasının bağlantı noktasını 233 olarak değiştirin

    v2ray change tcp port auto-> TCP yapılandırmasının bağlantı noktasını değiştirin; bağlantı noktası otomatik olarak oluşturulur

    v2ray change kcp id auto-> Bir mKCP yapılandırmasının UUID'sini değiştirin; UUID otomatik olarak oluşturulur

    v2ray change kcp dp auto-> mKCP tarafından yapılandırılmış bir dinamik bağlantı noktasını değiştirin; dinamik bağlantı noktası otomatik olarak oluşturulur

    v2ray change kcp dp 233 332-> mKCP tarafından yapılandırılan dinamik bağlantı noktasını 233-332 olarak değiştirin

    v2ray change tls host 233boy.com-> TLS yapılandırmasının alan adını 233boy.com olarak değiştirin

    v2ray change tls web example.com-> TLS ile yapılandırılmış gizlenmiş bir web sitesini example.com olarak değiştirin 

Hatırlatma, [seçenek] adı aynı zamanda doğrudan kullanımı da destekler

kullanım: v2ray [option] [name] [...]

Örnek:

    v2ray id->UUID'yi değiştir

    v2ray port-> Bağlantı noktasını değiştir

    v2ray port tcp 233-> TCP yapılandırmasının bağlantı noktasını 233 olarak değiştirin

    v2ray id tcp-> Bir tcp yapılandırmasının UUID'sini değiştirin

    v2ray id tcp auto-> Bir tcp yapılandırmasının UUID'sini değiştirin; UUID otomatik olarak oluşturulur

    v2ray dp kcp auto-> mKCP tarafından yapılandırılmış bir dinamik bağlantı noktasını değiştirin; dinamik bağlantı noktası otomatik olarak oluşturulur

    v2ray dp kcp 233 332-> mKCP tarafından yapılandırılan dinamik bağlantı noktasını 233-332 olarak değiştirin

    v2ray host tls 233boy.com-> TLS yapılandırmasının alan adını 233boy.com olarak değiştirin

    v2ray web tls example.com-> TLS ile yapılandırılmış gizlenmiş bir web sitesini example.com olarak değiştirin 

    Yapılandırmayı değiştirmek için birçok seçenek var, bu yüzden tek tek örnek vermeyeceğim. Çoğu durumda kullanın. v2ray changeBu kadar 

bilgi

Info parametresi yapılandırmayı görüntülemek için kullanılır

kullanım: v2ray info [name]

Örnek:

    v2ray info-> Yapılandırmayı görüntüle

    v2ray info tcp-> Bir TCP yapılandırmasını görüntüleyin

    v2ray info kcp-> Bir kcp yapılandırmasını görüntüleyin

    v2ray info tls-> TLS yapılandırmasını görüntüleyin 

URL

URL parametresi yapılandırılmış URL bağlantısını oluşturmak için kullanılır

kullanım: v2ray url [name]

Örnek:

    v2ray url-> Yapılandırılmış URL bağlantısını görüntüleyin

    v2ray url tcp-> TCP ile yapılandırılmış bir URL bağlantısını görüntüleyin

    v2ray url kcp-> KCP tarafından yapılandırılmış bir URL bağlantısını görüntüleyin

    v2ray url tls-> TLS ile yapılandırılmış bir URL bağlantısını görüntüleyin 

Not, kullanın v2ray infoAyrıca URL bağlantı bilgileri de oluşturulacaktır.
QR

Qr parametresi yapılandırılmış QR kodu bilgilerini oluşturmak için kullanılır.

kullanım: v2ray qr [name]

Örnek:

    v2ray qr-> Yapılandırılmış QR kodu bilgilerini görüntüleyin

    v2ray qr tcp-> Bir tcp yapılandırmasının QR kod bilgilerini görüntüleyin

    v2ray qr kcp-> Bir kcp yapılandırmasının QR kod bilgilerini görüntüleyin

    v2ray qr tls-> Bir tls yapılandırmasının QR kod bilgilerini görüntüleyin 

arasında

Del parametresi konfigürasyonu silmek için kullanılır

kullanım: v2ray del [name]

Örnek:

    v2ray del-> Yapılandırmayı sil

    v2ray del tcp-> Bir TCP yapılandırmasını silin

    v2ray del kcp-> Bir kcp yapılandırmasını silin

    v2ray del tls-> TLS yapılandırmasını silin 

    Bu seçeneği dikkatli kullanın 

iyi

Ddel parametresi birden fazla konfigürasyonu silmek için kullanılır

kullanım: v2ray ddel [name...]

Örnek:

    v2ray ddel-> Yapılandırmayı sil

    v2ray ddel tcp kcp-> Aynı anda bir tcp ve bir kcp yapılandırmasını silin 

Hatırlatma, burada [name]Silme işlemi yalnızca ilgili konfigürasyonun benzersiz olması durumunda gerçekleştirilecektir.

Örneğin, şu anda iki TCP yapılandırmanız olduğunu varsayarak şunu kullanın: v2ray ddel tcpHiçbir dosya silinmeyecek

    Bu seçeneği dikkatli kullanın 

müşteri

İstemci parametresi yalnızca referans amacıyla istemciye uygun json üretebilir. Varsayılan olarak oluşturulan yerel çorap5 dinleme bağlantı noktası 2333'tür.

kullanım: v2ray client [name]

Örnek:

    v2ray client
    v2ray client tcp
    v2ray client tls

gen

gen parametresi add parametresi ile aynı kullanıma sahiptir ancak gen parametresi yalnızca JSON içeriğini döndürür ve yapılandırma oluşturmaz. Yalnızca test amaçlıdır.

kullanım: v2ray gen [protocol] [args... | auto]

Örnek:

    v2ray gen ss
    v2ray gen tcp
    v2ray gen kcpd
    v2ray gen ws 233boy.com

genc

genc parametresi geçerli istemci giden JSON'unu görüntülemek için kullanılır ve yalnızca test amaçlıdır.

kullanım: v2ray genc [name]

Örnek:

    v2ray gen
    v2ray gen tcp

Hatırlatma, şunları da kullanabilirsiniz v2ray clientgenc ile aynı etkiye sahiptir.
bbr

Bbr parametresi BBR optimizasyonunu etkinleştirir

kullanmak: v2ray bbr
bin

Bin parametresi, ilgili komutları çalıştırmak için doğrudan V2Ray çekirdeğini çağırır. Bu parametre tüm V2Ray komutlarıyla tamamen uyumludur.

kullanım: v2ray bin [...]

Örnek: v2ray bin help

Varsayılan uyumlu komutlar: API, Convert, TLS, Run, Uuid

Örnek: v2ray uuid
xapi

Xapi parametreleri v2ray api'ye benzer, ancak API arka ucu şu anda çalışan V2Ray hizmetini kullanır

kullanım: v2ray xapi [...]

Örnek: v2ray xapi stats
fix-config.json

fix-config.json parametresi config.json dosyasını düzeltmek için kullanılır

kullanmak: v2ray fix-config.json
güncelleme

Güncelleme parametresi güncellemek için kullanılır

kullanım: v2ray update [core | sh | caddy] [ver]

Örnek:

    v2ray update-> Çekirdeği güncelle
    v2ray update core-> Çekirdeği güncelle
    v2ray update core v5.4.1-> V5.4.1 sürümünü kullanmak için çekirdeği güncelleyin
    v2ray update sh-> Komut dosyasını güncelle
    v2ray update caddy-> Caddy'yi Güncelle

kayıt

Log parametresi, V2Ray işleminin gerçek zamanlı günlüğünü görüntülemek için kullanılır.

kullanmak: v2ray log
durum

Durum parametresi çalışma durumunu kontrol etmek için kullanılır.

kullanmak: v2ray status
başlat, durdur, yeniden başlat

Başlatma, durdurma ve yeniden başlatma parametreleri, V2Ray başlatma, durdurma ve yeniden başlatma işlemlerini yönetmek için kullanılır.

kullanım: v2ray [start | stop | restart] [caddy]

Örnek:

    v2ray restart-> V2Ray'i yeniden başlatın
    v2ray restart caddy-> Caddy'yi yeniden başlat

yeniden yükle

Yeniden yükleme parametresi betiği yeniden yüklemek için kullanılır

kullanmak: v2ray reinstall
kaldır

Kaldırma parametresi betiği kaldırmak için kullanılır

kullanmak: v2ray uninstall
DNS'yi ayarla

Lütfen bakınız: V2Ray komut dosyası DNS ayarları
taşıma

Trafiği B makinesine iletmek için A makinesini kullanmanız gerekiyorsa

O zaman lütfen bakınız: V2Ray komut dosyası aktarımı eğitimi
yardım

Hata, artık yazmak istemiyorum. Diğer bazı parametre kullanımları için lütfen yardıma göz atın.

kullanmak: v2ray help
İçindekiler

Tüm V2Ray komut dosyaları /etc/v2ray dosyasında saklanır

Komut dosyası:/etc/v2ray/sh
Çekirdek:/etc/v2ray/bin
Yapılandırma: /etc/v2ray/conf

Neden XXX kurallarına uymadığını sormayın çünkü tek tıklamayla silme konseptine uymak istiyorum.
Arkadasşça bir uyarı

*TLS protokolü yapılandırmasını eklerseniz, gizlenmiş web sitesini kurduğunuzdan emin olun. v2ray web tlsHızlı bir şekilde gizlenmiş bir web sitesi kurun
Web sitesini gizle

Sahte bir web sitesi karşı nesildir; bu, kendi alan adınızı açtığınızda sahte web sitesinin içeriğinin görüntülendiği anlamına gelir.
Otomatik TLS talimatları

V2Ray komut dosyası otomatik TLS yardım talimatları
yedekleme komut dosyası

Ağza alınmayacak bir şeyin olabileceğini göz önünde bulundurarak her ihtimale karşı V2Ray betiğini yedekleyebilirsiniz.

Github adresi: https://github.com/233boy/v2ray

Bir kopyasını çatallayabilirsiniz. Kütüphaneyi tek tıklamayla silip kaçarsam, yine de normal şekilde yükleyebilir ve kullanabilirsiniz.

Kurulum komutu aşağıdaki gibidir:

wget https://github.com/233boy/v2ray/archive/master.tar.gz -O v2ray-master.tar.gz;tar -zxvf v2ray-master.tar.gz;cd v2ray-master;chmod +x i*;./i* -l

Eklemeyi unutmayın 233boyGithub kullanıcı adınızı değiştirin
Bizi takip edin

Telegram kanalı: https://t.me/tg2333

Telegram grubu: https://t.me/tg233boy
Geri bildirim sorusu

https://github.com/233boy/v2ray/issues 
