FROM debian:bookworm-slim

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get upgrade -y && apt-get install -y \
  dovecot-auth-lua \
  dovecot-imapd \
  dovecot-ldap \
  dovecot-lmtpd \
  dovecot-managesieved \
  dovecot-mysql \
  dovecot-sieve \
  dovecot-fts-xpian \
  lua-sql-mysql \
  php-cli \
  ssmtp

CMD ["/usr/sbin/dovecot", "-F"]
