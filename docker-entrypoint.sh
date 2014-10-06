#!/bin/bash

# Expects:
#   -e INTERFACE - sniffing interface ON THE HOST
#   -e CLUSTERID - pf_ring ZC cluster id
#   -e PROCS - number of processes to balance
#   -e ZC_LICENSE_DATA - ZeroCopy license data
#   -e ZC_LICENSE_MAC - MAC address for ZeroCopy license

[ -z "$CLUSTERID" ] && CLUSTERID=99
[ -z "$PROCS" ] && PROCS=4

source /zerocopy.sh

if [ "$1" = "zbalance_ipc" ]; then
    cp /usr/local/src/PF_RING/userland/examples_zc/zbalance_ipc /opt/pf_ring/bin
    /opt/pf_ring/bin/zbalance_ipc -i $INTERFACE -c $CLUSTERID -n $PROCS
fi

exec "$@"
