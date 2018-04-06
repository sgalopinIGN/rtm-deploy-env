# ogam-deploy-env
 Virtual machine configured to test OGAM in a **production** like mode with open source Puppet in standalone architecture.

## Installation

### Installation of the virtual machine (VM)

Vagrant is used to instantiate the virtual machine.
- Install [VirtualBox](https://www.virtualbox.org/wiki/Downloads),
- Install [Vagrant](https://www.vagrantup.com/downloads.html),
- [Configure Vagrant to use a proxy](https://github.com/sgalopinIGN/ogam-deploy-env/tree/production#vagrant-proxy-configuration) (Optional),
- Install [Git](https://git-scm.com/downloads),
- Clone the repository:
    - Move to the directory where you want to install the project,
    - Open a 'Git Bash' (ex: Right click and 'Git Bash'),
    - Type the following command line: 'git clone https://github.com/sgalopinIGN/ogam-deploy-env.git --single-branch --branch production'.

### Launch the VM

Move to the directory where you installed the project:
- Open a console ('right click' then 'Git Bash Here'),
- Type the 'vagrant up' command.

### Add the host resolution locally (Optional)
Into your host file (ex: "C:\Windows\System32\drivers\etc\hosts") add the following line:
```
192.168.50.19 ogam.prod.net
```

### Access to the VM
- [Website](http://192.168.50.19):
  - Use your navigator (Host: 192.168.50.19, Port: 80, Login: admin, Password: admin)
- SSH:
  - Solution 1: Use the command **$ vagrant ssh**,
  - Solution 2: Use a SSH client ( Host: 192.168.50.19, Port: 22, Login: vagrant, Password: vagrant )
- PostgreSQL:
  - Use pgAdmin ( Host: 192.168.50.19, Port: 5432, Base: ogam, Login: ogam, Password: ogam)

## Uninstall

- In Git Bash (To do for both VMs):
   - **$ vagrant halt**: Stops the VM.
   - **$ vagrant destroy**: Removes the VM.
- Delete the sources,
- Remove VirtualBox, Vagrant, Git.

## Vagrant

### Vagrant commands
- **$ vagrant ssh**: Opens an ssh console to the server.
- **$ vagrant halt**: Stops the VM.
- **$ vagrant destroy**: Removes the VM.
- **$ vagrant provision --provision-with deploy**: Deploy the puppet code environments.
- **$ vagrant provision --provision-with apply**: Launch a puppet apply.
- **$ vagrant provision --provision-with tasks**: Launch the predefined tasks.

### Vagrant proxy configuration

If your are into an enterprise network, you may need to configure Vagrant to use your local proxy :
  - Open a 'Git Bash' (ex: Right click and 'Git Bash').
  - Add the following environment variables:
  ```shell
  $ http_proxy = http://proxy.ign.fr:3128/
  $ https_proxy = http://proxy.ign.fr:3128/
  ```
  - Install the vagrant-proxyconf plugin:
  ```shell
  $ vagrant plugin install vagrant-proxyconf
  ```
  - Open your profile's Vagrantfile:
  ```shell
  $ nano  ~/.vagrant.d/Vagrantfile
  ```
  - Add the following code:
  ```shell
  Vagrant.configure("2") do |config|
    puts "Setting of the IGN proxy configuration."
    if Vagrant.has_plugin?("vagrant-proxyconf")
      config.proxy.http     = "http://proxy.ign.fr:3128/"
      config.proxy.https    = "http://proxy.ign.fr:3128/"
      config.proxy.no_proxy = "localhost,127.0.0.1,.example.com"
    end
  end
  ```
  * Check the configuration:
  ```shell
  $ vagrant up
  ```
  Check that the « Setting of the IGN proxy configuration. » message is present.

