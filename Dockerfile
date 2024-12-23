ARG BASE_IMAGE="us-docker.pkg.dev/libops-images/shared/isle-drupal"
ARG ISLANDORA_TAG=main
FROM ${BASE_IMAGE}:${ISLANDORA_TAG}

COPY --chown=100:101 . /var/www/drupal

RUN composer install
