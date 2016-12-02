# plm-demo Vagrant

The general goal is to get a the plm-demo up and running. You will need ports 3000, 3001, 8983, and 8988 free.

## Requirements

* [Vagrant](https://www.vagrantup.com/) version 1.8.5+
* [VirtualBox](https://www.virtualbox.org/)

You will need to have Vagrant installed on your machine. You can get that from: https://www.vagrantup.com/downloads.html

You will need to have some type of visualization software. On Ubuntu, this can be done by running: sudo apt-get install VirtualBox

## Setup

1. `git clone https://github.com/scande3/plm-vagrant.git`
2. `cd plm-vagrant`
3. `vagrant up`

You can shell into the machine with `vagrant ssh` or `ssh -p 2222 vagrant@localhost`

## Using the App

* In three seperate command prompt windows, run "vagrant ssh". Then do one of the following in each of them in order (waiting for the previous to finish):
  * `cd plm-demo`
  * `solr_wrapper -p 8983`

  * `cd plm-demo`
  * `rails s -p 3000 -b 0.0.0.0`

  * `cd linked-data-fragments`
  * `rails s -p 3001`
  
 * Once complete, the application should now be accessible at: [http://localhost:3000](http://localhost:3000)

## Environment

* Ubuntu 16.04 64-bit base machine

## Thanks

This VM is a modified version of the [Hydra Vagrant](https://www.vagrantup.com/downloads.html), which based on [Fedora 4 Vagrant](http://github.com/fcrepo4-exts/fcrepo4-vagrant), with borrowings from the [UCSD DAMS Vagrant](https://github.com/ucsdlib/dams-vagrant).
