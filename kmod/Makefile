ccflags-y := -DM=$(M)

obj-m += lioh.o
lioh-y := proc.o

all:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) modules

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(shell pwd) clean