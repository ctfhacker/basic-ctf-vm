# Vagrant CTF Box

## Tools included
* Binjitsu
* Pwndbg
* Radare2

## Install VirtualBox
Check [Virtualbox](https://www.virtualbox.org/wiki/Downloads) for information on installing Virtualbox on your respective operating system.

## Install Vagrant
Check [VagrantUp](http://www.vagrantup.com/downloads) for information on installing vagrant.

## Starting
```
vagrant up
vagrant ssh
???
Profit
```

## Check correct installation

### Pwndbg
```
gdb /bin/ls
```

```
Loaded 53 commands.  Type pwndbg for a list.
Reading symbols from host-share/crackme...(no debugging symbols found)...done.
Only available when running
pwn>
```

### Radare
```
r2 /bin/ls
```

```
[0x00404890]> aaa
```

