# Ansible

### Test that Ansible can reach all hosts
`ansible -i,ubuntu1,ubuntu2,ubuntu3,centos1,centos2,centos3 all -m ping`
### Ping all hosts in centos group
`ansible centos -m ping`
### List all hosts
`ansible all --list-host`
`cat hosts`
### List hosts and their ID
`ansible all -m command -a 'id' -o`
