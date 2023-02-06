# Ansible

### Test that Ansible can reach all hosts
`ansible -i,ubuntu1,ubuntu2,ubuntu3,centos1,centos2,centos3 all -m ping`
### Ping all hosts in centos group
`ansible centos -m ping`
### List all hosts
`ansible all --list-hosts`
### List hosts and their ID
`ansible all -m command -a 'id' -o`
### Convert yaml to json
`python3 -c 'import sys, yaml, json; json.dump(yaml.load(sys.stdin, Loader=yaml.FullLoader), sys.stdout, indent=4)' < file.yaml > file.json`
### View setup up of a host
`ansible ubuntu1 -m setup | more`

## Modules

### Create directory on all hosts
`ansible all -m file -a 'path=/tmp/test.txt state=touch'`
### Display timestamp of directory on all hosts
`ansible all -m command -a 'date -r /tmp/test'`
`ls -altrh /tmp/test`
Note it comes out yellow cause unix timestamp is updated
### Display timestamp of directory on one host
`ssh centos2 ls -altrh /tmp/test`
### Ansible Colors
Red: Failure
Yellow: Success with changes
Green: Success without changes
### Change permissions of directory on all hosts
`ansible all -m file -a 'path=/tmp/test state=file mode=600'`
### Copy file to all hosts
`ansible all -m copy -a 'src=/tmp/x dest=/tmp/x'`
### Send a command to all hosts
`ansible all -a 'pwd' -o`
