# Jnms vps config

For the "Debian 12 64 bit" template (on racknerd).

Relog after each section.

## Local ssh config

```
SetEnv TERM=xterm

...

Host jnms.me
    User root
```

## Install stuff

```
apt-get update && apt-get upgrade
apt-get install mosh vim htop rsync
```

## Set hostname

Run `hostnamectl hostname jnms.me`.

In `/etc/hosts`, remove the static ip and SolusVM lines.

## Ssh

Run `ssh-copy-id root@jnms.me`.

Comment out `PasswordAuthentication yes` in `/etc/ssh/sshd_config`.
(Might already be done by `apt-get upgrade`)

Run `systemctl restart sshd`.

## Install docker

Run `curl -fsSL https://get.docker.com | bash -`.

## This folder

Run `rcp docker-services jnms.me:`.
(`rcp` = `rsync --progress --inplace --recursive --verbose`)

### Dotfiles

Run `cd dotfiles && ./dotfiler.sh -d`.

### Install crontab

Run `cp crontab /etc/cron.d/docker_services`.

### Shared symlink

Run `cd && ln -s docker-services/volumes/fileserver/shared shared`

### Start services

Create `.env` from `.env.example`.

Restore service volumes from backups if needed.

Run `dc up -d`.
