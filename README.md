# Symfony + Docker project starter

- git clone git@github.com:yalexwander/symfony-docker-starter.git .
- edit `.env` to change `docker_image_prefix` and subnet. Change 3rd byte of ip addr.
- `bash create.sh`
- if you use vpn `sudo systemctl restart docker`
- `make docker_rebuild_everything`
- `make docker_up`
- `make symfony_project`
- http://localhost:18080

# Notes

- database name, user and password: `app`
- `systemctl` not available use `service`
