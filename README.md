andrewrothstein.credhub
=========
![Build Status](https://github.com/andrewrothstein/ansible-credhub/actions/workflows/build.yml/badge.svg)

Installs [credhub-cli](https://github.com/cloudfoundry-incubator/credhub-cli).

Requirements
------------

See [meta/main.yml](meta/main.yml)

Role Variables
--------------

See [defaults/main.yml](defaults/main.yml)

Dependencies
------------

See [meta/main.yml](meta/main.yml)

Example Playbook
----------------

```yml
- hosts: servers
  roles:
    - andrewrothstein.credhub
```

License
-------

MIT

Author Information
------------------

Andrew Rothstein <andrew.rothstein@gmail.com>
