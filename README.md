# libops

See [libops Development Documentation](https://docs.libops.io/development/) for full information.

## Overview

> [!NOTE]  
> | Environment | URL |
> | --- | --- |
> | development | https://drupal-development-419623129977.us-central1.run.app/ |
> | production  | https://drupal-production-419623129977.us-central1.run.app/ |

The basics are:

1. Pushing commits to the `development` branch automatically deploys the git branch to your development environment
2. Publishing [a release in GitHub](./../../releases/new) deploys the release tag to your production environment
3. Pushing commits to a new branch automatically creates a new environment and deploys the branch to your new environment.

## License

This repo was originally forked from [islandora-devops/islandora-starter-site](https://github.com/islandora-devops/islandora-starter-site). The most notable changes after forking have been:

- Replaced the fedora flysystem configuration for Drupal file entities and Islandora derivative actions to instead use [drupal/flysystem_gcs](https://www.drupal.org/project/flysystem_gcs)
- Configured file uploads on media entities to use [drupal/flysystem_gcs_cors](https://www.drupal.org/project/flysystem_gcs_cors) to directly upload files to Google Cloud Storage from the client's web browser
- Added GitHub Actions to this repo that are required for libops functionality
- Added a Drupal module required for running on the libops platform
- Upgraded the PDF.js library and added a patch to allow valid libops buckets to display in PDF viewer.
- Added [bootstrap_barrio](https://www.drupal.org/project/bootstrap_barrio) and created a subtheme of bootstrap_barrio theme called isle
- Replaced Openseadragon with [Islandora Mirador](https://github.com/islandora/islandora_mirador)
- Configured hOCR text creation per Islandora Mirador's instructions
- Updated `/search` page, removing [islandora/advanced_search](https://github.com/islandora/advanced_search)
- Added [drupal/field_group_table](https://www.drupal.org/project/field_group_table) and configured item level metadata to display using the formatter
- Added/configured [drupal/metatag_google_scholar](https://www.drupal.org/project/metatag_google_scholar)
- Added [drupal/views_bootstrap](https://www.drupal.org/project/views_bootstrap) and applied bootstrap style to solr search
- Added [drupal/entity_reference_facet_link](https://www.drupal.org/project/entity_reference_facet_link) and applied to entity references with facets on search page
- Added [drupal/xmlsitemap](https://www.drupal.org/project/xmlsitemap) and configured to expose repository items
- Added [drupal/islandora_vtt](https://www.drupal.org/project/islandora_vtt) to display VTT files
- Added [drupal/islandora_hls](https://www.drupal.org/project/islandora_hls) to handle generating streaming audio and video files
