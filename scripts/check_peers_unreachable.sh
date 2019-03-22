#!/bin/bash

unreachable_check=$(/usr/sbin/asterisk -rvx 'sip show peers' | grep 'UNREACHABLE' | wc -l)
if [ "${unreachable_check}" -gt "0" ]; then
        echo "Status: NOK, total peers unreachable: ${unreachable_check}"
        exit 2
else 
        echo "Status: OK, all peers reachable."
        exit 0
fi
