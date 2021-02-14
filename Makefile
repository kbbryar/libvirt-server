GIT_POKY=git://git.yoctoproject.org/poky

LOCAL_POKY=./poky

setup:
	if [ ! -d "${LOCAL_POKY}" ] ; then git clone -b yocto-3.2 ${GIT_POKY} ${LOCAL_POKY}; fi 
	#create directory for storing artifacts
	mkdir -p /yocto

clean:
	rm -Rf ${LOCAL_POKY}
