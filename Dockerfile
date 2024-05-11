ARG WEBSERVER_VERSION
FROM caddy:${WEBSERVER_VERSION}-builder AS builder
ARG DOCKER_PROXY_VERSION
RUN xcaddy build \
    --with github.com/lucaslorentz/caddy-docker-proxy/v2@v${DOCKER_PROXY_VERSION} \
    --with github.com/caddy-dns/ovh

FROM caddy:${WEBSERVER_VERSION}-alpine
COPY --from=builder /usr/bin/caddy /usr/bin/caddy
CMD ["caddy", "docker-proxy"]