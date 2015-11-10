# Vagrant CTF Box

## Tools included
* Binjitsu
* Pwndbg
* Radare2

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

