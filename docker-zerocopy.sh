#!/bin/bash

if [[ $INTERFACE == zc:* ]]; then
    # PF_RING ZeroCopy
    if [ -n "$ZC_LICENSE_DATA" ]; then
        mkdir -p /etc/pf_ring
        echo $ZC_LICENSE_DATA > /etc/pf_ring/$ZC_LICENSE_MAC
    fi

    mkdir /mnt/huge
    mount -t hugetlbfs nodev /mnt/huge
fi
