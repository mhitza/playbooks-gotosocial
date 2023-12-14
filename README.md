Ansible playbooks for deployment and maintenance of a GoToSocial (ActivityPub) instance, on a RedHat compatible
distribution (CentOS, RockyLinux, Alma, Fedora, etc).

Defaults set for an instance that is exposed directly via HTTP/HTTPS, and with SQLite as backend.


## Quick Start

For fewer flags on the cli I suggest defining the inventory entry for your instance in `/etc/ansible/hosts`

```yaml
all:
  hosts:
    gotosocial: # gotosocial must be the inventory host name or group name
        ansible_host: 10.0.0.1
        ansible_ssh_user: my_user
        # The following two variables are mandatory
        release_version: '0.12.2'
        deploy_dir: /gotosocial
        # For each property in the configuration file you can make your own entry
        # within the following map. At the very least you'd want to define your
        # domain name using the host property.
        config_entries:
            host: example.com
```

```shell
make install
```

```shell
make backup
```
