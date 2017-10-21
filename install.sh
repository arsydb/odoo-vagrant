echo "Welcome to Odoo 10 installer for ubuntu 16.04"

echo -e "\n---- Configure locale ----"
sudo locale-gen
sudo sh -c "echo 'LANG=en_US.UTF-8\nLC_ALL=en_US.UTF-8' > /etc/default/locale"
sudo sh -c 'echo "LC_ALL=en_US.UTF-8" > /etc/environment'

echo -e "\n---- Update Server ----"
sudo apt-get update
sudo apt-get upgrade -y

echo -e "\n---- Install git and vim ----"
sudo apt-get install git vim -y

echo -e "\n---- Install NodeJs and its package manager ----"
sudo apt-get install npm -y

echo -e "\n---- Call node runs nodejs ----"
sudo ln -s /usr/bin/nodejs /usr/bin/node

echo -e "\n---- Install less compiler ----"
sudo npm install -g less less-plugin-clean-css

echo -e "\n---- Create a directory to work in ----"
sudo mkdir ~/odoo-dev 

echo -e "\n---- Go into our work directory ----"
cd ~/odoo-dev

echo -e "\n---- Get Odoo source code ----"
sudo git clone --depth=1 --branch=10.0 https://github.com/odoo/odoo.git

echo -e "\n---- Install Odoo system dependencies ----"
sudo apt-get install -y python-babel
sudo apt-get install -y python-dateutil
sudo apt-get install -y python-decorator
sudo apt-get install -y python-docutils
sudo apt-get install -y python-feedparser
sudo apt-get install -y python-imaging
sudo apt-get install -y python-jinja2
sudo apt-get install -y python-ldap
sudo apt-get install -y python-libxslt1
sudo apt-get install -y python-lxml
sudo apt-get install -y python-mako
sudo apt-get install -y python-mock
sudo apt-get install -y python-openid
sudo apt-get install -y python-passlib
sudo apt-get install -y python-psutil
sudo apt-get install -y python-psycopg2
sudo apt-get install -y python-pychart
sudo apt-get install -y python-pydot
sudo apt-get install -y python-pyparsing
sudo apt-get install -y python-pypdf
sudo apt-get install -y python-reportlab
sudo apt-get install -y python-requests
sudo apt-get install -y python-suds
sudo apt-get install -y python-tz
sudo apt-get install -y python-vatnumber
sudo apt-get install -y python-vobject
sudo apt-get install -y python-werkzeug
sudo apt-get install -y python-xlsxwriter
sudo apt-get install -y python-xlwt
sudo apt-get install -y python-yaml

echo -e "\n---- Install PostgreSQL & db superuser for unix user ----"
sudo apt-get install -y postgresql
sudo su - postgres -c "createuser -s $(whoami)"

echo -e "\n---- Create user for pgadmin (admin:admin) ----"
sudo su - postgres -c "createuser -s admin"
sudo -u postgres psql -c "ALTER USER admin WITH PASSWORD 'admin';"

echo -e "\n---- Configure postgresql to listen in all interfaces ----"
sudo sed -i "s/^#listen_addresses.*/listen_addresses = '*'/" /etc/postgresql/9.5/main/postgresql.conf 
sudo sh -c 'echo "host  all   all   all     password" >> /etc/postgresql/9.5/main/pg_hba.conf'
sudo service postgresql restart

echo -e "\n---- End of installation ----"
