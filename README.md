# LibOps

See [LibOps Development Documentation](https://docs.libops.io/development/) for full information.

## Overview

> [!NOTE]  
> | Environment | URL |
> | --- | --- |
> | development | __CR_DEV_URL__ |
> | production  | __CR_PROD_URL__ |

The basics are:

1. Pushing commits to the `development` branch automatically deploys the git branch to your development environment
2. Publishing [a release in GitHub](./../../releases/new) deploys the release tag to your production environment
3. Pushing commits to a new branch automatically creates a new environment and deploys the branch to your new environment.

## License

In following with GPLv2, this repo was originally forked from [islandora-devops/islandora-starter-site](https://github.com/islandora-devops/islandora-starter-site).

The most notable changes after forking have been:
