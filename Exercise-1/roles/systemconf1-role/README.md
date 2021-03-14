Role Name
=========

Configure a Fedora system according a set of security rules.

Requirements
------------

libpwquality
Ansible >= 2.8

Role Variables
--------------
min_passwd_length: default 11
default_umask: default to 644

Dependencies
------------

libpwquality

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - { role: username.rolename, x: 42 }

License
-------

BSD

Author Information
------------------

José Enrique Gutiérrez Mazón
