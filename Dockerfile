FROM dimaip/docker-neos-alpine:latest
ENV PHP_TIMEZONE=Europe/Moscow
ENV REPOSITORY_URL=https://github.com/psmb/KpfDistr
ENV AWS_ENDPOINT=https://hb.bizmrg.com
ENV AWS_BACKUP_ARN=s3://psmb-neos-resources/db/kpf/
ENV DONT_PUBLISH_PERSISTENT=1
VOLUME /data/www/Web/_Resources
RUN /provision-neos.sh
