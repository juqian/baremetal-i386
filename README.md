# baremetal-i386

A a minimal bare metal program that runs on qemu-system-i386
it outputs "OK\n" to a COM1 at 0x3f8

License
---
[Apache 2.0 license](http://www.apache.org/licenses/).

Sources
---
Get the sources for this project from github.
NOTE: this git repo uses submodules so use `git clone --recursive`
```
mkdir -p ~/prgs
cd ~/prgs
git clone --recursive https://github.com/winksaville/baremetal-i386.git
cd baremetal-i386
```
Create cross-tool-chain
---
```
vendor-install-tools/install.py binutils-i586-elf
vendor-install-tools/install.py gcc-i586-elf
```
Build and run
---
```
make run
```
Type 'ctrl-a' x to exit.
