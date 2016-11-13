#/bin/bash
#export PATH="/bin:/sbin:/usr/sbin:/usr/bin"

ROUTE_GW="gw `nvram get wan0_gateway`"

if [ $# -ne 1 ]; then
   echo $0 add/delete
   exit
fi

if [ "$1" != "add" ]  && [ "$1" != "delete" ]; then
   echo $0 add/delete
   exit
fi

if [ "$1" == "delete" ]; then
    ROUTE_GW="gw `156.154.70.1`"
fi

OPS=$1


# route $OPS -net ${IP_SEGMENT} ${ROUTE_GW}
