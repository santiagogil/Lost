# LEMP box on steroids provisioned by chef-solo on Vagrant

* [Vagrant](http://vagrantup.com)
* [Nginx](http://wiki.nginx.org/Main)
* PHP-FPM (with APC, CURL, GD, MySQL modules)
* Percona Server 

Vagrant is a tool for building and distributing virtualized development environments.

By providing automated creation and provisioning of virtual machines using [Oracle’s VirtualBox](http://www.virtualbox.org),
Vagrant provides the tools to create and configure lightweight, reproducible, and portable
virtual environments. For more information, see the part of the getting started guide
on [Why Vagrant?](http://vagrantup.com/v1/docs/getting-started/why.html)

## Quick Start

First, make sure your development machine has [VirtualBox](http://www.virtualbox.org)
installed (version 4.2 and later are preferable). The setup from that point forward is very easy:

	1. Install Vagrant (version 1.0.5 and later are preferable)
	2. $ git clone https://github.com/santiagogil/Lost.git your-folder
	3. $ cd your-folder
	4. $ bundle install
	5. $ librarian-chef install
	6. $ vagrant up
	7. Wait a few minutes
	8. Point your browser to localhost:8080 


## What

It's a work in progress, not tested yet.
The proyect concist in building a "LEMP on steroids".
It will include a lot of config customizations, security sane defaults and monitoring built in.

[![endorse](http://api.coderwall.com/santiagogil/endorsecount.png)](http://coderwall.com/santiagogil)
