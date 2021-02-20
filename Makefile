GIT_POKY=git://git.yoctoproject.org/poky
GIT_OPENEMBEDDED=git://git.openembedded.org/meta-openembedded
GIT_RASPBERRYPI=git://git.yoctoproject.org/meta-raspberrypi
GIT_VIRTUALIZATION=git://git.yoctoproject.org/meta-virtualization
GIT_LIBVIRT=git@github.com:kbbryar/meta-libvirt
	

LOCAL_POKY=./poky
LOCAL_OPENEMBEDDED=./layers/meta-openembedded
LOCAL_RASPBERRYPI=./layers/meta-raspberrypi
LOCAL_VIRTUALIZATION=./layers/meta-virtualization
LOCAL_LIBVIRT=./layers/meta-libvirt

setup:
	if [ ! -d "${LOCAL_POKY}" ] ; then git clone -b yocto-3.2 ${GIT_POKY} ${LOCAL_POKY}; fi 
	if [ ! -d "${LOCAL_OPENEMBEDDED}" ] ; then git clone -b gatesgarth ${GIT_OPENEMBEDDED} ${LOCAL_OPENEMBEDDED}; fi 
	if [ ! -d "${LOCAL_RASPBERRYPI}" ] ; then git clone -b gatesgarth ${GIT_RASPBERRYPI} ${LOCAL_RASPBERRYPI}; fi 
	if [ ! -d "${LOCAL_VIRTUALIZATION}" ] ; then git clone -b gatesgarth ${GIT_VIRTUALIZATION} ${LOCAL_VIRTUALIZATION}; fi 
	if [ ! -d "${LOCAL_LIBVIRT}" ] ; then git clone ${GIT_LIBVIRT} ${LOCAL_LIBVIRT}; fi 
	#create directory for storing artifacts
	mkdir -p /yocto

clean:
	rm -Rf ${LOCAL_POKY}
