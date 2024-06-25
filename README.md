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
