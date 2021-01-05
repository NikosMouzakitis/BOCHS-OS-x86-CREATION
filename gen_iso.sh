#!/bin/bash

genisoimage -R \
	-b boot/grub/stage2_eltorito \
	-boot-load-size 4 \
	-A os \
	-input-charset utf8 \
	-quiet \
	-boot-info-table \
	-o os.iso \
	-no-emul-boot \
	iso
