# UniFi (unifi.ui.com, UniFi Site Manager) — облачное управление консолями Ubiquiti
# Маршруты собраны по DNS-ответам доменов сервиса 2026-11-11
# Проверено через DNS: 1.1.1.1, 8.8.8.8, 77.88.8.8, 208.67.222.222, 94.140.14.14
#
# ВАЖНО: из РФ и Беларуси unifi.ui.com закрыт экспортным контролем US/EU:
# DNS отдаёт geo-block.errors.svc.ui.com, а страница отвечает HTTP 451 «Access Prohibited».
# Одних маршрутов поэтому мало — DNS-запросы тоже должны идти через VPN
# (DoT/DoH на 8.8.8.8 или 1.1.1.1, поднятый через туннель).
# Адреса самих geo-block.errors (44.237.217.0/24 и 54.244.2.0/24) в список не добавлены:
# они всегда отдают страницу «Access Prohibited» и в панель не ведут.
# Список доменов сервиса — в файле UniFi_domain.

# --- Панель Site Manager (unifi.ui.com, unifi-cloud.ui.com) и редирект unifi.ubnt.com (CloudFront) ---
route add 13.227.146.0 mask 255.255.255.0 0.0.0.0
route add 108.157.214.0 mask 255.255.255.0 0.0.0.0
route add 18.245.60.0 mask 255.255.255.0 0.0.0.0
route add 143.204.238.0 mask 255.255.255.0 0.0.0.0
route add 18.66.233.0 mask 255.255.255.0 0.0.0.0

# --- Вход в аккаунт и SSO: account.ui.com, sso.ui.com, geo.svc.ui.com, static.ui.com ---
route add 3.174.230.0 mask 255.255.255.0 0.0.0.0
route add 13.249.8.0 mask 255.255.255.0 0.0.0.0
route add 52.222.136.0 mask 255.255.255.0 0.0.0.0
route add 108.138.51.0 mask 255.255.255.0 0.0.0.0
route add 54.192.35.0 mask 255.255.255.0 0.0.0.0
route add 18.244.102.0 mask 255.255.255.0 0.0.0.0
route add 3.174.46.0 mask 255.255.255.0 0.0.0.0

# --- Cloud Access: cloudaccess.svc.ui.com, enterprise.svc.ui.com, fabric.svc.ui.com ---
route add 108.157.229.0 mask 255.255.255.0 0.0.0.0

# --- Консоль: config.ubnt.com и отчёты о сбоях ---
route add 18.244.146.0 mask 255.255.255.0 0.0.0.0
route add 3.174.2.0 mask 255.255.255.0 0.0.0.0
route add 35.162.163.0 mask 255.255.255.0 0.0.0.0
route add 35.167.127.0 mask 255.255.255.0 0.0.0.0
route add 44.245.145.0 mask 255.255.255.0 0.0.0.0
route add 54.149.92.0 mask 255.255.255.0 0.0.0.0

# --- Телеметрия консоли trace.svc.ui.com (для работы панели не обязательна) ---
route add 100.20.30.0 mask 255.255.255.0 0.0.0.0
route add 16.144.96.0 mask 255.255.255.0 0.0.0.0
route add 16.147.117.0 mask 255.255.255.0 0.0.0.0
route add 32.188.39.0 mask 255.255.255.0 0.0.0.0
route add 32.191.158.0 mask 255.255.255.0 0.0.0.0
route add 35.155.1.0 mask 255.255.255.0 0.0.0.0
route add 44.230.127.0 mask 255.255.255.0 0.0.0.0
route add 44.240.45.0 mask 255.255.255.0 0.0.0.0
route add 44.240.192.0 mask 255.255.255.0 0.0.0.0
route add 44.242.14.0 mask 255.255.255.0 0.0.0.0
route add 44.252.121.0 mask 255.255.255.0 0.0.0.0
route add 44.253.69.0 mask 255.255.255.0 0.0.0.0
route add 44.254.139.0 mask 255.255.255.0 0.0.0.0
route add 52.10.13.0 mask 255.255.255.0 0.0.0.0
route add 52.27.2.0 mask 255.255.255.0 0.0.0.0
route add 52.27.50.0 mask 255.255.255.0 0.0.0.0
route add 52.43.143.0 mask 255.255.255.0 0.0.0.0
route add 54.148.205.0 mask 255.255.255.0 0.0.0.0
route add 54.189.105.0 mask 255.255.255.0 0.0.0.0

# --- API и служебные сервисы: api.ui.com, ues.svc.ui.com, ips.svc.ui.com, push-уведомления ---
route add 44.237.66.0 mask 255.255.255.0 0.0.0.0
route add 52.25.130.0 mask 255.255.255.0 0.0.0.0
route add 52.26.221.0 mask 255.255.255.0 0.0.0.0
route add 54.203.22.0 mask 255.255.255.0 0.0.0.0
route add 32.188.139.0 mask 255.255.255.0 0.0.0.0
route add 44.236.194.0 mask 255.255.255.0 0.0.0.0
route add 54.68.107.0 mask 255.255.255.0 0.0.0.0
route add 54.71.153.0 mask 255.255.255.0 0.0.0.0
route add 100.21.6.0 mask 255.255.255.0 0.0.0.0
route add 44.232.207.0 mask 255.255.255.0 0.0.0.0
route add 52.36.119.0 mask 255.255.255.0 0.0.0.0
route add 54.70.89.0 mask 255.255.255.0 0.0.0.0
route add 16.145.128.0 mask 255.255.255.0 0.0.0.0
route add 32.184.37.0 mask 255.255.255.0 0.0.0.0
route add 32.190.240.0 mask 255.255.255.0 0.0.0.0
route add 35.160.56.0 mask 255.255.255.0 0.0.0.0
route add 52.11.92.0 mask 255.255.255.0 0.0.0.0
route add 54.187.220.0 mask 255.255.255.0 0.0.0.0
route add 54.191.47.0 mask 255.255.255.0 0.0.0.0
route add 100.22.41.0 mask 255.255.255.0 0.0.0.0
