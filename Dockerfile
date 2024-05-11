ARG CADDY_VERSION
FROM caddy:${CADDY_VERSION}-builder AS builder
ARG CADDY_DOCKER_PROXY_VERSION
RUN xcaddy build \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2@v${CADDY_DOCKER_PROXY_VERSION} \
    --with github.com/caddy-dns/ovh

FROM caddy:${CADDY_VERSION}-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
CMD ["caddy", "docker-proxy"]