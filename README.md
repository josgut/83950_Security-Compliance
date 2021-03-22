# 83950_Security-Compliance

=========

Two exercises both implemented with ansible playbooks

exercise-1.yaml:
Configure a Fedora system according a set of security rules.

  * users in a Linux system can set only passwords that are n characters long

  * umask is set to an appropriate value

  * user generation of core dumps is disabled

exercise-2.yaml:
  * Contents of the file would be supplied as an Ansible variable.

  * File contents have to match that variable exactly - there is nothing extra in the file (not even whitespace).

  * If the file content is correct before the playbook execution, the playbook won’t modify it during its execution.

exercise-4.sh:
  * Only has a parameter with then name of the user to delete from sudoers file.

Requirements
------------

  * A host named "fedora.local"
  * Ansible >= 2.8
  * An user in wheel group on remote host
  * Wheel users can change to root without password

Role Variables
--------------
systemconf1-role

    min_passwd_length: default 11

    default_umask: default to 644

systemconf2-role

    sysctl_file_content

Dependencies
------------

* libpwquality

* User that executes playbook can connect to remote server with public key

* Remote server has sudo configured with no passwod to whell group 

* User that executes playbook has wheel group assigned in remote server


License
-------

BSD

Author Information
------------------

José Enrique Gutiérrez Mazón
