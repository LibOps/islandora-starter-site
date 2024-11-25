# You should not be editing this file.

# To override this value, set "tag" in libops.yml
ARG ISLANDORA_TAG=3.4

FROM  us-docker.pkg.dev/libops-images/shared/isle-drupal:${ISLANDORA_TAG}

COPY --chown=100:101 . /var/www/drupal/

RUN --mount=type=cache,id=custom-drupal-composer,sharing=locked,target=/root/.composer/cache \
  composer install -d /var/www/drupal && \
  chown -R 100:101 /var/www/drupal
