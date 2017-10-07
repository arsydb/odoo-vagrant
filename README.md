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

## Notes

Once the Odoo installation is finished odoo will run by default on 8069 port

```
http://localhost:8069
```

You will see Odoo database manager, create your first database to get started.

Below is the Standard Odoo installation details:

* Service Name : odoo-server
* Default Port : 8069
* PostgreSQL User : odoo
* Code Location : /odoo
* Default Addons Location : /odoo/odoo-server/addons
* Custom Addons Directory : /odoo/custom/addons

## Services

You can start stop and reload odoo service using below command.

* Start Odoo service : sudo service odoo-server start
* Stop Odoo service : sudo service odoo-server stop
* Restart Odoo service : sudo service odoo-server restart
