# LEMP provisioned by chef-solo on Vagrant

* [Vagrant](http://vagrantup.com)
* Nginx
* PHP-FPM (with Xdebug and some other modules)
* MySQL

Vagrant is a tool for building and distributing virtualized development environments.

By providing automated creation and provisioning of virtual machines using [Oracle’s VirtualBox](http://www.virtualbox.org),
Vagrant provides the tools to create and configure lightweight, reproducible, and portable
virtual environments. For more information, see the part of the getting started guide
on “[Why Vagrant?](http://vagrantup.com/v1/docs/getting-started/index.html)”

## Quick Start

First, make sure your development machine has [VirtualBox](http://www.virtualbox.org)
installed (version 4.2 and later are preferable). The setup from that point forward is very easy:

	1. Install Vagrant
	2. Clone this git repo
	3. cd into de Git repo
	4. $ vagrant up
	5. Wait a few minutes

## Results

* NGINX + PHP responding on port 5080
* Xdebug acessible on port 9998
* MySQL responding on port 3307
