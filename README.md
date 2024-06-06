# caddy-homelab

## Description
This Caddy image is built and used for my homelab to deliver Let's Encrypt certificates with my DNS provider OVH using DNS Challenge and enables Caddy to be used as a reverse proxy for Docker containers via labels

## Requirements
This image uses the following software:
- [Caddy](https://github.com/caddyserver/caddy)
    - [Caddy-Docker-Proxy](https://github.com/lucaslorentz/caddy-docker-proxy)
    - [OVH module for Caddy](https://github.com/caddy-dns/ovh)

The last module can be changed for the DNS provider of your module of your choice, please make sure it is listed here: https://github.com/caddy-dns