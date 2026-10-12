# Unite Data Source Environment

Shared architecture, development workflows, and agent instructions:
[UNITE project documentation](https://github.com/dkfz-unite/.github/blob/main/README.md).

Installation scripts and Compose configuration for
[unite-data-source](https://github.com/dkfz-unite/unite-data-source).
This repository contains deployment configuration; the service implementation
is in the separate source repository.

### Installation
Configuration follows the general
[unite-env structure](https://github.com/dkfz-unite/unite-env/blob/main/README.md#folder-structure).
The owner's installation places this checkout at
`unite-env/plugins/unite-data-source`. A clean `unite-env` checkout need not
contain the nested plugin checkout.

To configure the application:
1. Clone this configuration repository into the installation's `plugins/`
   directory, using the appropriate plugin directory name.
2. Provide valid JWT token for the application changing `UNITE_WORKER_TOKEN` in `docker-compose.yml` file.
3. Set portal/worker addresses and configure source-data, config, and tracking
   cache mounts for the chosen installation.
4. Run scripts through `sh` from this directory. The provided `deploy.sh`,
   `build.remote.sh`, and `build.local.sh` select a published image, remote
   source, or local source respectively and start the service. The current
   remote-build script does not process a branch argument.

Scripts pass the installation's `.env` and `.env.secrets` (two levels above
this directory) to Docker Compose; local builds copy the source from `$UNITE_SOURCE_PATH`. Compose joins external Docker network `unite`.
The current example mounts `config/`, `cache/`, and host `/mnt`; it publishes
the service on host loopback port 5400. Check these settings and advertised
resource URLs for the actual deployment; the scripts were read but not run
during onboarding.

Data Source can run with the portal using mounted directories from data servers,
as on the owner's current installations, or near/on the data server. It submits
to feed APIs and hosts resource files over HTTP. Separate-host installation
requires configuration for that network/storage placement; the current example
is not a fully verified standalone-host recipe.
