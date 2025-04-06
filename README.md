# Маршруты для роутера Keenetic

 Зайти в web интерфейс роутера, выбрать `Меню/ Маршрутизация / Загрузить из файла` http://192.168.1.1/staticRoutes В строке интерфейс выбрать ваш VPN конфиг (разницы нет **OpenVPN, PPTP, WireGuard, AmneziaWG, Socks5**) и нажать загрузить. Если с первого раза не загрузились все маршруты, еще раз нажать загрузить и роутер добавит недостающие маршруты.

![Screenshot](https://rockblack.su/images/Screenshot_153.jpg)
> [!NOTE]
> Таким способом выход в Youtube, Instagram и другие сервисы будет через VPN, а на другие сервисы и сайты через вашего провайдера.


____

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
213.180.199.0
```


![Screenshot](https://rockblack.su/images/Screenshot_160.jpg)

____
Поиск ip адресов по доменам https://rockblack.pro/ip-address.html

Введите домены и нажмите **Найти IP**

![Screenshot](https://rockblack.pro/images/Screenshot_2.jpg)

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

Отключить **IPv6**

![Screenshot](https://rockblack.pro/images/Screenshot_33.jpg)


____
> [!TIP]
> [VPN на роутер](https://rockblack.pro/price) - WireGuard, AmneziaWG, OpenVPN, Vless, Outline, Socks5

> [Телеграмм бот](https://t.me/Cripto_Plusbot)

> [Телеграмм группа](https://t.me/rockblack_vpn)


____
## Star History

[![Star History Chart](https://api.star-history.com/svg?repos=RockBlack-VPN/ip-address&type=Date)](https://star-history.com/#RockBlack-VPN/ip-address&Date)
