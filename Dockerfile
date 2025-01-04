ARG BASE_IMAGE="us-docker.pkg.dev/libops-images/shared/isle-drupal"
# this is set in libops.yml as "islandora-tag"
ARG ISLANDORA_TAG=main
FROM ${BASE_IMAGE}:${ISLANDORA_TAG}

COPY --chown=100:101 . /var/www/drupal

RUN composer install
