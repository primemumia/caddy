# Resmi Caddy imajı - Alpine tabanlı, hafif sürüm
FROM caddy:2-alpine

# Caddyfile konfigürasyonunu kopyala
COPY Caddyfile /etc/caddy/Caddyfile

# Cloud Run 8080 portunu kullanır (PORT env var ile override edilebilir)
EXPOSE 8080

# Caddyfile ile başlat
CMD ["caddy", "run", "--config", "/etc/caddy/Caddyfile", "--adapter", "caddyfile"]
