# Lemda ERP 2.0

This repository packages the **Odoo Community Edition** (version 18.0) with Lemda ERP 2.0 branding. It includes a setup script and sample configuration so you can deploy the system on your own server or virtual machine.

## Installation

1. Clone this repository or download it as a ZIP and extract it on your VM.
2. Run the setup script to install dependencies and clone Odoo:

```bash
bash setup.sh
```

3. Copy the provided configuration file to `/etc/lemda-erp.conf` and adjust parameters (database connection, admin password, etc.) as needed:

```bash
sudo cp lemda-erp.conf /etc/lemda-erp.conf
```

4. Start the Lemda ERP server:

```bash
sudo -u lemdaerp python3 /opt/lemda-erp/odoo/odoo-bin -c /etc/lemda-erp.conf
```

Once running, open your browser and navigate to `http://<server-ip>:8069` to access the web interface.

## Notes

- The setup script clones the official Odoo Community Edition repository (branch `18.0`). The code remains licensed under the LGPLv3 license.
- You can customize the branding, addons path, and other settings by editing the configuration file.

## License

This project is distributed under the MIT License. See the [LICENSE](LICENSE) file for details.
