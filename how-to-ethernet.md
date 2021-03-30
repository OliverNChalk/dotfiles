# How to Ethernet

Assuming you are using dynamic IP, use the following config:
```
[Match]
Name=__NAME_OF_ETHERNET_DEVICE__

[Network]
DHCP=yes
```

Then ensure systemd-networkd is enabled/running. Enabled means it will run on startup. If it is already running, restarting it will ensure the config is loaded:
```
systemctl status systemd-networkd

systemctl start systemd-networkd
systemctl enable systemd-networkd
systemctl restart systemd-networkd
```
