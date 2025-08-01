#!/bin/bash

# Lemda ERP 2.0 setup script for Odoo Community Edition.

# Update and install dependencies
sudo apt-get update
sudo apt-get install -y git python3 python3-pip build-essential wget node-less libpq-dev

# Create a dedicated system user for Lemda ERP
sudo adduser --system --quiet --home=/opt/lemda-erp --group lemdaerp

# Clone Odoo Community Edition (branch 18.0)
sudo -u lemdaerp git clone --depth 1 -b 18.0 https://github.com/odoo/odoo.git /opt/lemda-erp/odoo

# Install Python dependencies
sudo pip3 install -r /opt/lemda-erp/odoo/requirements.txt

# Finish
echo "Lemda ERP 2.0 installation finished."
echo "To start the server, run:"
echo "sudo -u lemdaerp python3 /opt/lemda-erp/odoo/odoo-bin -c /etc/lemda-erp.conf"
