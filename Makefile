

.PHONY: all, clean, install, install-usr, install-etc, update-debia
	
all: 

clean:
	

install:  
	for fn in `find scripts -type d | sed 's+scripts/usr++g'`; do install -m 755 -d $(DESTDIR)$$fn; done
	for fn in `find scripts -type f | sed 's+scripts/usr++g'`; do install -m 644 scripts$$fn $(DESTDIR)$$fn; done
	chmod uto+x $(DESTDIR)/usr/local/bin/jack_capture
