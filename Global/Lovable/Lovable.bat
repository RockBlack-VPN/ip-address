# Lovable (lovable.dev): маршруты сгенерированы из списка доменов 2026-11-04
# Адреса проверены через DNS 1.1.1.1, 8.8.8.8, 9.9.9.9 и Google DNS с ECS для разных стран
# Сети Lovable Labs Sweden AB (AS197670) взяты из базы RIPE целиком

# Собственные сети Lovable: опубликованные приложения *.lovable.app (LOVABLE-APP),
# LOVABLE-NET и инфраструктура *.lovable.net (LOVABLE-INFRA)
route add 185.41.148.0 mask 255.255.252.0 0.0.0.0
# Песочницы Lovable (LOVABLE-SANDBOX)
route add 81.85.112.0 mask 255.255.240.0 0.0.0.0

# Редактор и вход: lovable.dev, auth.lovable.dev, assets.lovable.dev, mcp.lovable.dev (Cloudflare)
route add 104.18.0.0 mask 255.255.255.0 0.0.0.0
route add 104.18.1.0 mask 255.255.255.0 0.0.0.0
route add 8.6.112.0 mask 255.255.255.0 0.0.0.0
route add 8.47.69.0 mask 255.255.255.0 0.0.0.0

# API: api.lovable.dev, lovable-api.com (Google Cloud)
route add 34.49.40.0 mask 255.255.255.0 0.0.0.0

# Превью проектов *.lovableproject.com
route add 104.18.8.0 mask 255.255.255.0 0.0.0.0
route add 104.18.9.0 mask 255.255.255.0 0.0.0.0

# Скрипты cdn.gpteng.co и старый домен gptengineer.app
route add 104.18.28.0 mask 255.255.255.0 0.0.0.0
route add 104.18.29.0 mask 255.255.255.0 0.0.0.0
route add 188.114.96.0 mask 255.255.255.0 0.0.0.0
route add 188.114.97.0 mask 255.255.255.0 0.0.0.0

# lovable.cloud
route add 104.21.45.0 mask 255.255.255.0 0.0.0.0
route add 172.67.216.0 mask 255.255.255.0 0.0.0.0

# trust.lovable.dev
route add 104.18.26.0 mask 255.255.255.0 0.0.0.0
route add 104.18.27.0 mask 255.255.255.0 0.0.0.0

# Документация и статус: docs.lovable.dev, status.lovable.dev (Vercel)
route add 66.33.60.0 mask 255.255.255.0 0.0.0.0
route add 76.76.21.0 mask 255.255.255.0 0.0.0.0
