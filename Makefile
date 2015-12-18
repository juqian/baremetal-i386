# Copyright 2015 wink saville
#
# licensed under the apache license, version 2.0 (the "license");
# you may not use this file except in compliance with the license.
# you may obtain a copy of the license at
#
#     http://www.apache.org/licenses/license-2.0
#
# unless required by applicable law or agreed to in writing, software
# distributed under the license is distributed on an "as is" basis,
# without warranties or conditions of any kind, either express or implied.
# see the license for the specific language governing permissions and
# limitations under the license.

CC=i586-elf-gcc
CFLAGS:=-std=c11 -ffreestanding -O2 -g -Wall -Wextra -nostdlib -nostartfiles -nodefaultlibs

kmain.elf: boot.o kmain.o link.ld
	$(CC) -T link.ld -o kmain.elf $(CFLAGS) boot.o kmain.o -lgcc

boot.o: boot.S
	$(CC) -c boot.S -o boot.o $(CFLAGS)

kmain.o: kmain.c
	$(CC) -c kmain.c -o kmain.o $(CFLAGS)

.PHONY: run
run: kmain.elf
	qemu-system-i386 -kernel kmain.elf -nographic

.PHONY: clean
clean:
	rm -f boot.o kmain.o kmain.elf
