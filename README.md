# Jnms vps config

For rocky linux 9.

## Install stuff

```
dnf upgrade --refresh --allowerasing # Takes a while, will kill your ssh session
systemctl enable --now NetworkManager
dnf install epel-release
dnf install vim htop
```

## Ssh

Use `ssh-copy-id`.

Disable password auth.

## Set hostname

Set `/etc/hostname` to `jnms.me`.

Remove the ip line from `/etc/hosts`.

## Install docker

Run `curl -fsSL https://get.docker.com -o get-docker.sh`.

Force set `$lsb_dist` to `rhel`.

Run `bash get-docker.sh`.

Run `systemctl enable --now docker`.

## Dotfiles

Run `cd dotfiles && ./dotfiler.sh -d`.

Relog.

## Start services

Run `dc up -d`.

## Install crontab

Run `cp crontab /etc/crontab`.
