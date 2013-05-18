all: linux-core build-grid-module build-grid-config build-glibc
linux-core: 
	cd linux; make zImage;
build-grid-module: 
	cd grid-module; make;
build-grid-config: 
	cd grid-config; make;
build-glibc:
	cd glibc-build; make;
build-busybox:
	cd busybox; make;
#build-app: 
#	cd ./app; make;
clean: 
	@echo $$(pwd);

