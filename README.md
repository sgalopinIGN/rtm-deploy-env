# ogam-deploy-env
 Virtual machine configured to test OGAM in a **production** like mode with open source Puppet in standalone architecture.

## Installation

### Installation of the virtual machine (VM)

Vagrant is used to instantiate the virtual machine.
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads),
- Install [Vagrant](https://www.vagrantup.com/downloads.html),
- Install [Git](https://git-scm.com/downloads),
- Clone the repository:
    - Move to the directory where you want to install the project,
    - Open a 'Git Bash' (ex: Right click and 'Git Bash'),
    - Type the following command line: 'git clone https://github.com/sgalopinIGN/ogam-deploy-env.git --single-branch --branch production'.

### Launch the VM

Move to the directory where you installed the project:
- Open a console ('right click' then 'Git Bash Here'),
- Type the 'vagrant up' command.

### Access to the website
Start your browser and enter the address: http://192.168.50.19/

### Add Host Resolution Locally (Optional)
Into your host file (ex: "C:\Windows\System32\drivers\etc\hosts") add the following line:
```
192.168.50.19 ogam.prod.net
```

## Uninstall

- In Git Bash (To do for both VMs):
   - **$ vagrant halt**: Stops the VM.
   - **$ vagrant destroy**: Removes the VM.
- Delete the sources,
- Remove VirtualBox, Vagrant, Git.

## Development

### Vagrant commands
- **$ vagrant ssh**: Opens an ssh console to the server.
- **$ vagrant halt**: Stops the VM.
- **$ vagrant destroy**: Removes the VM.
- **$ vagrant provision --provision-with deploy**: Deploy the puppet code environments.
- **$ vagrant provision --provision-with apply**: Launch a puppet apply.
- **$ vagrant provision --provision-with tasks**: Launch the predefined tasks.


