#
# Regular cron jobs for the cuimhne-sox package
#
0 4	* * *	root	[ -x /usr/bin/cuimhne-sox_maintenance ] && /usr/bin/cuimhne-sox_maintenance
