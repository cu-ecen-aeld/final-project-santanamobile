#!/bin/sh

case "$1" in
  dlna)
    service_name="minidlnad"
    ;;
  smb)
    service_name="smbd"
    ;;
  nfs)
    service_name="nfsd"
    ;;
  *)
    echo "Invalid service name"
    exit 1
    ;;
esac

if pidof "$service_name" > /dev/null; then
    echo "running"
else
    echo "stopped"
fi
