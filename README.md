# Маршруты для роутера Keenetic

 Зайти в web интерфейс роутера, выбрать `Меню/ Маршрутизация / Загрузить из файла` http://192.168.1.1/staticRoutes В строке интерфейс выбрать ваш VPN конфиг (разницы нет **OpenVPN, PPTP, WireGuard, AmneziaWG, Socks5**) и нажать загрузить. Если с первого раза не загрузились все маршруты, еще раз нажать загрузить и роутер добавит недостающие маршруты.

![Screenshot](https://rockblack.su/images/Screenshot_153.jpg)
> [!NOTE]
> Таким способом выход в Youtube, Instagram и другие сервисы будет через VPN, а на другие сервисы и сайты через вашего провайдера.


____
# Кинопоиск
Если после загрузки маршрутов у вас **перестал работать кинопоиск**, то нужно добавить **Статический маршрут** и поставить птичку на `эксклюзивный маршрут`, что даст приоритет этому маршруту. 

В интерфейсе выбрать вашего провайдера, в данном примере - `Подключение Ethernet`

:white_check_mark:Добавить данные ip адреса с `маской 24` как на скриншоте
```
5.255.255.0
```
```
77.88.21.0
```
```
77.88.44.0
```
```
77.88.55.0
```
```
87.250.247.0
```
```
87.250.250.0
```
```
87.250.251.0
```
```
87.250.254.0
```
```
93.158.134.0
```
```
178.154.131.0
```
```
185.85.13.0
```
```
213.180.199.0
```


![Screenshot](https://rockblack.su/images/Screenshot_160.jpg)

____
# Поиск ip адресов по доменам 

Введите домены и нажмите **Найти IP**
https://rockblack.pro/ip-address


![Screenshot](https://rockblack.pro/images/github/Screenshot_10.jpg)

**Как найти все домены данного сайта(сервиса)**

Открыть youtube в Chrome, нажать F12 - Перейти во вкладку console, прописать команду `allow pasting` , а не скопировать (так не работает)

Затем следующую команду скопировать и вставить в console
```
window.domains = [...new Set(performance.getEntriesByType('resource').map(r => (new URL(r.name)).hostname))];
console.log(domains);
```
Полученные домены скопировать и вставить в https://rockblack.pro/ip-address

![Screenshot](https://rockblack.pro/images/github/s12.jpg)

![Screenshot](https://rockblack.pro/images/github/Screenshot_36.jpg)

____

# DNS DoT
:white_check_mark:Если после добавления маршрутов Instagram, Twitter и других сервисов, они не работают, то нужно добавить **DNS DoT**, отключить **IPv6** и затем очистить кэш и куки приложения. Для Windows, в cmd `ipconfig /flushdns` - очистит локальный кэш DNS

Для работы протокола DoT нужно в интернет-центре предварительно установить соответствующий компонент системы "Прокси-сервер DNS-over-TLS". Сделать это можно на странице "Общие настройки" в разделе "Обновления и компоненты", нажав на "Изменить набор компонентов".

![Screenshot](https://rockblack.pro/images/dot.png)

Добавить DNS DoT

`94.140.14.14`  dns.adguard-dns.com

`94.140.15.15` dns.adguard-dns.com

`8.8.8.8`  dns.google

`8.8.4.4`  dns.google

`1.1.1.1` cloudflare-dns.com

`1.0.0.1`  cloudflare-dns.com

![Screenshot](https://rockblack.su/images/vless/DNS1.jpg)

![Screenshot](https://rockblack.su/images/vless/DNS2.jpg)

Отключить **IPv6** и поставить птичку **Игнорировать DNS провайдера**

![Screenshot](https://rockblack.pro/images/Screenshot_33.jpg)


____

## Поддержи проект

**Если этот проект полезен для вас, вы можете оказать поддержку** :coffee:

<p align="left">
  <a href="https://yookassa.ru/my/i/aD3025LTifTf/l" target="_blank">
    <img src="https://rockblack.pro/images/github/youkassa.png" alt="YooKassa" width="100" style="margin-right: 10px;">
  </a><a href="https://yoomoney.ru/to/4100117689665720" target="_blank">
    <img src="https://rockblack.pro/images/github/umoney.png" alt="YuMoney" width="100">
  </a>
</p>

____

> [!TIP]

> [VPN на роутер](https://rockblack.pro/price) - WireGuard, AmneziaWG, OpenVPN, Vless, Outline, Socks5

> [Телеграмм бот](https://t.me/RockBlack_bot)

> [Телеграмм группа](https://t.me/rockblack_vpn)
>



____
## Star History

[![Stargazers over time](https://starchart.cc/RockBlack-VPN/ip-address.svg?variant=adaptive)](https://starchart.cc/RockBlack-VPN/ip-address)
