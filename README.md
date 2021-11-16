# Symfony + Docker project starter

- git clone git@github.com:yalexwander/symfony-docker-starter.git .
- edit `.env` to change image prefix and subnet. Change 3rd byte of ip addr.
- `bash create.sh`
- `make docker_rebuild_everything`
- `make docker_up`
- `cd project`
- `composer create-project symfony/skeleton .`

# Notes

- database name, user and password: `app`
- uses debian without systemctl, service works ok
