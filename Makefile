#DATE = `date "+%Y%m%d.%H%M"`
DATE = `date "+%Y%m%d"`
NAME = "Ed4_LaRC_FuLiou"
all: simple

libsrc:
	cd ./lib/src ;make

simple: libsrc
	cd ./src/simple ; make
	cd ./src/simple ; simple

clean : 
	cd ./lib/src ;make clean
	cd ./src/simple ; make clean

#------------------------------------
tar:
	echo ${DATE}
	tar cvf ../${NAME}${DATE}.tar . 
	gzip    ../${NAME}${DATE}.tar
	ls -l   ../${NAME}${DATE}.tar.gz
