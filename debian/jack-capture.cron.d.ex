#
# Regular cron jobs for the jack-capture package
#
0 4	* * *	root	[ -x /usr/bin/jack-capture_maintenance ] && /usr/bin/jack-capture_maintenance
