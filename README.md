# realtime-vagrant

This sets up a completely development-ready setup for [Realtime](https://github.com/CodeYellowBV/realtime).

## Requirements

- Vagrant (`1.7` or higher).
- VirtualBox, libvirt or QEMU.
- Something to do while waiting.

## Setup

Clone this repository and run `vagrant up`. Now wait. This can take very long, so please do something useful meanwhile and do not stare at the screen.

Also be sure to enter this in your /etc/hosts:

    10.10.10.22 realtime.test

If you wish to start multiple instances, edit `server_ip` in Vagrantfile and
adjust the above line.

## Usage

After waiting for ages, you can enter the box with `vagrant ssh`.

Run the backend with `runbackend`. 

Run the frontend with `runfrontend`.

Access the database with `psql -d realtime`.

See for some other executables the `scripts/bin` folder of this repository.
