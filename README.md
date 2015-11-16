# Vagrant CTF Box

Basic Ubuntu 14.04 VM built to be used for playing CTFs.

## Tools included
* Pwndbg - Pretty GDB
* Radare2 - Intense command line disassembler suite of tools

## Install VirtualBox
Check [Virtualbox](https://www.virtualbox.org/wiki/Downloads) for information on installing Virtualbox on your respective operating system.

## Install Vagrant
Check [VagrantUp](http://www.vagrantup.com/downloads) for information on installing vagrant.

## Starting
In the current directory, run the following commands
```
vagrant up
vagrant ssh
```

## Check correct installation

### Pwndbg

Run the following command in the VM:
```
gdb /bin/ls
```

Expected output:
```
Loaded 53 commands.  Type pwndbg for a list.
Reading symbols from host-share/crackme...(no debugging symbols found)...done.
Only available when running
pwn>
```

### Radare

Run the following command in the VM:
```
r2 /bin/ls
```

Expected output:
```
[0x00404890]> aaa
```

### Shared folder

Drop files in the `host-share` folder on your host to find them on your VM.
