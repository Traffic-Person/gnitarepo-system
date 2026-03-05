# Gnitarepo System

## QEMU is needed (i386) 

## Demo video

https://github.com/user-attachments/assets/e8606e5b-9710-4d2e-ab31-4f9c6ce613cf

### best to install qemu-system

what can this do? you can type! with every ascii character eg !@#$%^&*() etc etc

how to use: download and get into the folder of gnitarepo and run:
```
qemu-system-i386 -drive format=raw,file=os.img,if=floppy,snapshot=on
```
how to build: Clone this repo, (dependencies needed eg. nasm gcc-i686):
```
make
```
how to cleanup the old binaries:
```
make clean
```
