#!/bin/bash
if [ -f /db/db.sqlite ]
then
  if [ ! -f /app/db/db.sqlite ]
    then
      ln -s /db/db.sqlite /app/db/db.sqlite
  fi
else
  /usr/bin/python3.7 /app/main.py --api & > /dev/null 2>&1
  chimera_pid=$!
  sleep 5s
  kill $chimera_pid
  mv /app/db/db.sqlite /db/db.sqlite
  ln -s /db/db.sqlite /app/db/db.sqlite
fi

if [ "$CONFIGURE" == "TRUE" ]
then
  sleep 24h
else
  /usr/bin/python3.7 /app/main.py --api
fi
