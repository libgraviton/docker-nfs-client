#! /bin/sh -e

mkdir -p "$MOUNTPOINT"

rpc.statd & rpcbind -f &
mount -t "$FSTYPE" -o "$MOUNT_OPTIONS" "$SERVER:$SHARE" "$MOUNTPOINT"
mount | grep nfs

while true; do sleep 1000; done
