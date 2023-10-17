FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  dovecot-auth-lua \
  dovecot-sieve \
  dovecot-imapd \
  dovecot-lmtpd \
  dovecot-mysql \
  php-cli

CMD ["/usr/sbin/dovecot", "-F"]
