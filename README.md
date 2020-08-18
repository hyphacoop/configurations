# configurations

This repo contains configurations used for [our anibles](https://github.com/hyphacoop/ansibles/) and various scripts that run on our infrastructure.
Each project has its own root directory, such as `hyphacoop` which contains configuration files for that project.

## Projects

### hyphacoop

- [**shortlinks**](hyphacoop/shortlinks) contains the CSV file used for [link.hypha.coop](https://link.hypha.coop)
- [**matrix-purge-roomlist**](hyphacoop/matrix-purge-roomlist) contains a list of rooms where history is purged weekly for messages older than 3 months

### tomeshnet

- [**purge-room-script**](tomeshnet/purge-room-script) contains a room history purge script that runs on the [Toronto Mesh](https://tomesh.net) Matrix server
