# mattermost-github-docker
Docker definition for Github to Mattermost integration.

A dockerized version of [mattermost-github-integration](https://github.com/softdevteam/mattermost-github-integration).

# How to use

Create an directory on your docker host, and make a copy of the [config.py](https://github.com/brettwooldridge/mattermost-github-docker)
file from this project and place it there.  Edit as documented
[here](https://github.com/softdevteam/mattermost-github-integration).

Run the docker using this command:
```
docker run -d -e MGI_CONFIG_FILE=/config/config.py -v <path_to_config_directory>:/config brettwooldridge/mattermostgithub
```
