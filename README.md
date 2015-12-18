# baremetal-i386`

A a minimal bare metal program that runs on qemu-system-i386
it outputs "OK\n" to a COM1 at 0x3f8

License
---
[Apache 2.0 license](http://www.apache.org/licenses/).

Prerequesites
---
* [Meson](https://mesonbuild.com) for building, Tested with 0.27
* [binutils-gdb](https://www.gnu.org/software/binutils/) Tested with ToT from git repo
* [Gcc](https://gcc.gnu.org/) Tested with 5.2
* [qemu](http://wiki.qemu.org/Main_Page) Tested with 2.4.0.1

Sources
---
Get the sources for this project from github.
NOTE: this git repo uses submodules so use `git clone --recursive`
```
mkdir -p ~/prgs
cd ~/prgs
git clone --recursive https://github.com/winksaville/sadie.git
cd sadie
```
Create cross-tool-chain
---
```
vendor-install-tools/install.py binutils-i586
vendor-install-tools/install.py gcc-i586
```
Build sadie for ARM VersatilePB
---
```
mkdir -p ~/prgs/sadie/build-VersatilePB
cd ~/prgs/sadie/build-VersatilePB
meson -D Platform=VersatilePB --cross-file ../cross-file-VersatilePB --buildtype plain ..
ninja
```
Build and run
---
```
make run
```
Type 'ctrl-a' x to exit.
