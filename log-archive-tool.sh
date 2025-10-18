#!/bin/bash

set -euo pipefail
LOG_ARCHIVE=/var/log/xrdp.log
prevarchive=/root/logforserver/log_archive_`date +"%H-%M-%S-%d-%m-%Y"`
cat $LOG_ARCHIVE >> $prevarchive
tar -cvzf $prevarchive.tar.gz $prevarchive
rm -f $prevarchive

