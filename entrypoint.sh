#!/usr/bin/env bash

# start redis
if ! pgrep redis-server >/dev/null
then
  service redis-server start
fi

# start apache
if ! pgrep apache2 >/dev/null
then
  service apache2 start
fi

# tail the log files
tail -f /var/log/apache2/access.log
