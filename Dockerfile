FROM docker.io/library/caddy:2.11.2-builder AS builder

RUN xcaddy build v2.11.2 \
    --with github.com/caddy-dns/he

FROM docker.io/library/caddy:2.11.2-alpine

COPY --from=builder /usr/bin/caddy /usr/bin/caddy

