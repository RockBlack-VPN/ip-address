<div align="center">

# 🌐 IP-адреса и домены сервисов для маршрутизации через VPN

**Готовые списки маршрутов для роутеров Keenetic: YouTube, Instagram, Telegram, Discord, ChatGPT, Netflix и ещё 150+ сервисов**

[![Stars](https://img.shields.io/github/stars/RockBlack-VPN/ip-address?style=flat-square&logo=github)](https://github.com/RockBlack-VPN/ip-address/stargazers)
[![Forks](https://img.shields.io/github/forks/RockBlack-VPN/ip-address?style=flat-square&logo=github)](https://github.com/RockBlack-VPN/ip-address/network/members)
[![Last commit](https://img.shields.io/github/last-commit/RockBlack-VPN/ip-address?style=flat-square)](https://github.com/RockBlack-VPN/ip-address/commits/main)
[![License: MIT](https://img.shields.io/badge/license-MIT-green?style=flat-square)](LICENSE)
[![Telegram](https://img.shields.io/badge/Telegram-группа-26A5E4?style=flat-square&logo=telegram)](https://t.me/rockblack_vpn)

</div>

---

## 📑 Содержание

- [Что это такое](#-что-это-такое)
- [Структура репозитория](#-структура-репозитория)
- [Популярные сервисы](#-популярные-сервисы)
- [Загрузка маршрутов в Keenetic](#-загрузка-маршрутов-в-keenetic)
- [Если перестал работать Кинопоиск](#-если-перестал-работать-кинопоиск)
- [DNS-over-TLS (DoT)](#-dns-over-tls-dot)
- [Как найти IP-адреса и домены сервиса](#-как-найти-ip-адреса-и-домены-сервиса)


---

## 💡 Что это такое

Это набор файлов со статическими маршрутами (`route add …`) для **раздельного туннелирования**: трафик к нужным сервисам идёт через VPN, а всё остальное — напрямую через провайдера.

Подходит для любого VPN-подключения на роутере: **WireGuard, AmneziaWG, OpenVPN, PPTP, L2TP, SSTP, Socks5** и т. д.

> [!NOTE]
> Через VPN пойдут только YouTube, Instagram и другие выбранные сервисы. Остальные сайты продолжат открываться через вашего провайдера без потери скорости.

---

## 📂 Структура репозитория

| Папка / файл | Назначение |
|---|---|
| [`Global/`](Global) | Маршруты для зарубежных сервисов: одна папка — один сервис. Файлы `*.bat` — маршруты, файлы `*_domain` — списки доменов сервиса |
| [`RU-RU/`](RU-RU) | Маршруты для российских сайтов (госуслуги, банки, онлайн-кинотеатры и т. д.), которые нужно пускать **мимо VPN**, через провайдера |
| [`XKeen(routing)/`](XKeen(routing)) | Готовые `05_routing.json` для [XKeen](https://github.com/Skrill0/XKeen) (Xray на Keenetic) |
| [`XKeen(data)/`](XKeen(data)) | Файл `rockblack.dat` с данными geosite/geoip для XKeen |
| [`DNS Resolver Pro`](DNS%20Resolver%20Pro) | Офлайн-утилита: превращает список доменов в маршруты для Keenetic. Скачайте файл, переименуйте в `.html` и откройте в браузере |

Если в папке лежит несколько версий файла (например, `_0.0.1`, `_0.0.2`), то **файл с бо́льшим номером новее и полнее**. Файлы с `min` / `minimum` в названии — облегчённые варианты с минимумом маршрутов.

> [!TIP]
> Блок `# ===== Обновление ГГГГ-ММ-ДД =====` в конце файла — это адреса, добавленные при последнем обновлении. Загружайте файл целиком, вместе с этим блоком.

---

## ⭐ Популярные сервисы

| Сервис | Папка | Сервис | Папка |
|---|---|---|---|
| ▶️ YouTube | [`Youtube`](Global/Youtube) | 💬 Telegram | [`Telegram`](Global/Telegram) |
| 📸 Instagram | [`Instagram`](Global/Instagram) | 🎮 Discord | [`Discord`](Global/Discord) |
| 👥 Facebook / Meta | [`Facebook`](Global/Facebook), [`Meta`](Global/Meta) | 🟢 WhatsApp | [`Whatsapp`](Global/Whatsapp) |
| 🐦 X (Twitter) | [`Twitter`](Global/Twitter) | 🎵 TikTok | [`TikTok`](Global/TikTok) |
| 🤖 ChatGPT | [`ChatGPT(OpenAI)`](Global/ChatGPT(OpenAI)) | 🧠 Claude | [`claude`](Global/claude) |
| ✨ Gemini | [`gemini`](Global/gemini) | 🧩 Grok | [`grok`](Global/grok) |
| 🎬 Netflix | [`Netflix`](Global/Netflix) | 🎧 Spotify | [`Spotify`](Global/Spotify) |
| 🟣 Twitch | [`twitch`](Global/twitch) | 🐙 GitHub | [`github`](Global/github) |
| 🎮 Steam / CS2 | [`Steam`](Global/Steam), [`CS-2`](Global/CS-2) | 🧱 Roblox | [`Roblox`](Global/Roblox) |
| 🪟 Microsoft | [`Microsoft`](Global/Microsoft) | 🔎 Google | [`Google`](Global/Google) |

Полный список сервисов — в папке [`Global/`](Global).

---

## 📡 Загрузка маршрутов в Keenetic

1. Скачайте нужный `.bat`-файл: откройте его на GitHub и нажмите **Download raw file** (кнопка ⬇ справа сверху).
2. Откройте веб-интерфейс роутера → **Сетевые правила** → **Маршрутизация** (`http://192.168.1.1/staticRoutes`).
3. Нажмите **Загрузить из файла**.
4. В поле **Интерфейс** выберите ваше VPN-подключение (WireGuard, AmneziaWG, OpenVPN, PPTP, Socks5 и т. д. — разницы нет).
5. Выберите скачанный файл и нажмите **Загрузить**.

> [!IMPORTANT]
> Если с первого раза загрузились не все маршруты, нажмите **Загрузить** ещё раз — роутер добавит недостающие.

---

## 🎬 Если перестал работать Кинопоиск

После загрузки маршрутов (особенно больших списков Google и Cloudflare) Кинопоиск может перестать работать. Решение — добавить для него **статические маршруты через провайдера** с приоритетом:

1. **Маршрутизация** → **Добавить маршрут**.
2. **Тип маршрута:** маршрут до сети, **маска:** `255.255.255.0` (`/24`).
3. **Интерфейс:** подключение вашего провайдера (например, `Подключение Ethernet`).
4. Поставьте галочку **Эксклюзивный маршрут** — это даст маршруту приоритет над VPN.
5. Повторите для каждой подсети:

```text
5.255.255.0
77.88.21.0
77.88.44.0
77.88.55.0
87.250.247.0
87.250.250.0
87.250.251.0
87.250.254.0
93.158.134.0
178.154.131.0
185.85.13.0
213.180.199.0
```

Так же можно пустить мимо VPN любой российский сайт: готовые списки лежат в папке [`RU-RU/`](RU-RU), например [`kinopoisk.ru.bat`](RU-RU/kinopoisk.ru.bat). При загрузке такого файла выберите интерфейс **провайдера**, а не VPN.

---

## 🔒 DNS-over-TLS (DoT)

Если после добавления маршрутов Instagram, X (Twitter) и другие сервисы всё равно не открываются, скорее всего, провайдер подменяет DNS-ответы. Что делать:

1. **Установите компонент DoT.** **Общие настройки** → **Обновления и компоненты** → **Изменить набор компонентов** → отметьте **Прокси-сервер DNS-over-TLS** и установите обновление.
2. **Добавьте DoT-серверы.** **Сетевые правила** → **Интернет-фильтры** → **Настройка DNS** → **Добавить сервер** → тип **DNS-over-TLS**:

   | Адрес сервера | Доменное имя TLS |
   |---|---|
   | `94.140.14.14` | `dns.adguard-dns.com` |
   | `94.140.15.15` | `dns.adguard-dns.com` |
   | `8.8.8.8` | `dns.google` |
   | `8.8.4.4` | `dns.google` |
   | `1.1.1.1` | `cloudflare-dns.com` |
   | `1.0.0.1` | `cloudflare-dns.com` |

3. **Отключите DNS провайдера.** В настройках подключения к провайдеру поставьте галочку **Игнорировать DNSv4 интернет-провайдера** (и DNSv6, если есть).
4. **Отключите IPv6** на подключении к провайдеру, иначе часть трафика пойдёт мимо маршрутов.
5. **Очистите кэш** и cookies приложений и браузера. В Windows дополнительно выполните в командной строке:

   ```cmd
   ipconfig /flushdns
   ```

---

## 🔎 Как найти IP-адреса и домены сервиса

### 1. Соберите все домены сайта

1. Откройте нужный сайт (например, YouTube) в Google Chrome.
2. Нажмите **F12** и перейдите на вкладку **Console**.
3. **Наберите вручную** (не вставляйте) `allow pasting` и нажмите Enter — так Chrome разрешит вставку кода.
4. Вставьте и выполните команду:

```js
window.domains = [...new Set(performance.getEntriesByType('resource').map(r => (new URL(r.name)).hostname))];
console.log(domains);
```

В консоли появится список всех доменов, к которым обращалась страница.

### 2. Превратите домены в маршруты

- **Онлайн:** вставьте домены на **[rockbl.info](https://rockbl.info/)** и нажмите **Найти IP**.
- **Офлайн:** скачайте [`DNS Resolver Pro`](DNS%20Resolver%20Pro), переименуйте файл в `DNS Resolver Pro.html` и откройте его в браузере. Формат **Keenetic route Min** объединяет адреса в подсети `/24`: маршрутов получается меньше, а работают они стабильнее.

---

## 🤝 Как помочь проекту

Нашли сервис, которого нет в списке, или адреса устарели? Создайте [Issue](https://github.com/RockBlack-VPN/ip-address/issues) или пришлите [Pull Request](https://github.com/RockBlack-VPN/ip-address/pulls):

- Один сервис — одна папка в `Global/` (или один файл в `RU-RU/`).
- Формат строки: `route add <сеть> mask <маска> 0.0.0.0`. Указывайте адрес именно сети: `157.240.10.0 mask 255.255.254.0`, а не `157.240.11.0 mask 255.255.254.0`.
- Комментарии пишите отдельной строкой, начиная с `#`.
- Список доменов сервиса кладите рядом, в файл `<сервис>_domain`.

---



## 🔗 Полезные ссылки

- 🛡 [VPN для роутера](https://my.rockblack.tech/) — WireGuard, AmneziaWG, OpenVPN, VLESS, Outline, Socks5
- 🤖 [Telegram-бот](https://t.me/RockBlack_bot)
- 💬 [Telegram-группа](https://t.me/rockblack_vpn)
- 🔍 [Поиск IP-адресов по доменам](https://rockbl.info/)

---


<div align="center">

Распространяется под лицензией [MIT](LICENSE)

</div>
