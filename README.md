# audisp-auditdistd

Pushing audit logs from Linux over to FreeBSD using auditdistd daemons.

## Usage

### First set up

```sh
./generate-auditdistd-conf
./do-vagrant-up
./do-provision
vagrant provision linux-sender --provision-with rebuild-openbsm
```

### Run auditdistds

```sh
vagrant provision freebsd-receiver --provision-with run
vagrant provision linux-sender --provision-with run
```

### Detatils

There are 3 machines:

* freebsd-receiver
* freebsd-sender
* linux-sender

The goal is to make linux-sender work flawlessly with freebsd-receiver.

freebsd-sender is here for debugging purposes. In order to start the freebsd-sender machine you have to run:

```sh
./do-vagrant-up --full
```

Every machine has its own OpenBSM branch.

## Dependencies

- `rsync`
- `vagrant`
