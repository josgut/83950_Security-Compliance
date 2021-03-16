Role Name
=========

Configure a Fedora system according a set of security rules.

  * users in a Linux system can set only passwords that are n characters long

  * umask is set to an appropriate value

  * user generation of core dumps is disabled

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
User that executes playbook can connect to remote server with public key
Remote server has sudo configured with no passwod to whell group 
User that executes playbook has wheel group assigned in remote server

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
