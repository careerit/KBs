Services


Service is a software program that runs in the background non-interactively.
This serves a specific purpose, such as enabling remoting connections, serving web pages, or as a mail server.

To Lists all the running services:

`sudo systemctl list-units`

To start a service:

`sudo systemctl start <servicename>`

To stop a Service:

`sudo systemctl stop <servicename>`

To restart a Service

`sudo systemctl restart <servicename>`

To enable a service:
(Enabling is to ensure it auto-starts after reboot of the machine)
`sudo systemctl enable <servicename>`

