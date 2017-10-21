# odoo-vagrant

Odoo on Ubuntu 16.04 using Vagrant

## Dependencies

* VirtualBox
* Vagrant

## Install

Clone this repository

```
git clone https://github.com/arsydb/odoo-vagrant.git
```

Enter the directory

```
cd odoo-vagrant
```

Start the vagrant

```
vagrant up
```

Once the Odoo installation is finished, enter the virtual machine

```
vagrant ssh
```

## Run

```
~/odoo-dev/odoo/odoo-bin
```

Odoo will run by default on 8069 port

```
http://localhost:8069
```

You will see Odoo database manager, create your first database to get started.

## pgadmin user

* user: admin
* pass: admin