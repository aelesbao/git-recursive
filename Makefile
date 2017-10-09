PREFIX?=/usr/local
INSTALLDIR?=$(PREFIX)
INSTALL=install

install:
	${INSTALL} -d ${DESTDIR}${INSTALLDIR}/bin
	${INSTALL} -m755 git-recursive ${DESTDIR}${INSTALLDIR}/bin/git-recursive

tag:
	cat git-recursive | \
		grep 'VERSION=' | \
		sed 's/VERSION="\(.*\)"/\1/g' | \
		xargs -I version git tag -s version -m version
