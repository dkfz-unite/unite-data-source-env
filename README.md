# unite-data-source-environment
UNITE data source service installation scripts and configuration files.

### Installation
Configuration of the service maintains general [structure](https://github.com/dkfz-unite/unite-environment/blob/main/README.md#folder-structure) of all UNITE applications.

To configure the application:
1. Clone it's source code under `applications` folder of UNITE environment.
2. Provide valid JWT token for the application changing `UNITE_WORKER_TOKEN` in `docker-compose.yml` file.
3. Mount ODCF data to the server running `mount.sh` script.
4. Run 'deploy.sh' script to start the service.