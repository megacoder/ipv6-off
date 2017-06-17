ETCDIR	=/etc
MODDIR	=${ETC}/modprobe.d

all:

install: no-ipv6
	install -d ${MODDIR}
	install -c -m 0644 no-ipv6 ${MODDIR}/
	/sbin/depmod -ae

uninstall:
	${RM} ${MODDIR}/no-ipv6
	/sbin/depmod -ae
