FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  dovecot-lmtp

CMD ["/usr/sbin/dovecot", "-F"]
