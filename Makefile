

.PHONY: all, clean, install, install-usr, install-etc, update-debia
	
all: scripts/usr/src/hd44780-i2c-$(VERSION)/dkms.conf 

clean:
	
install-usr: scripts/usr/src/hd44780-i2c-$(VERSION)/dkms.conf
	install -d $(DESTDIR)/usr
	for fn in `find scripts/usr -type d | sed 's+scripts/usr++g'`; do install -m 755 -d $(DESTDIR)/usr$$fn; done
	for fn in `find scripts/usr -type f | sed 's+scripts/usr++g'`; do install -m 644 scripts/usr$$fn $(DESTDIR)/usr$$fn; done

install-etc:
	install -d $(DESTDIR)/etc
	for fn in `find scripts/etc -type d | sed 's+scripts/etc++g'`; do install -m 755 -d $(DESTDIR)/etc$$fn; done
	for fn in `find scripts/etc -type f | sed 's+scripts/etc++g'`; do install -m 644 scripts/etc$$fn $(DESTDIR)/etc$$fn; done

install:  install-usr, install-etc	