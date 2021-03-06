if [ -f /var/run/pluto/pluto.pid ]; then ipsec auto --down westnet-eastnet-ikev2 ; fi
if [ -f /var/run/charon.pid ]; then sleep 5 ; fi
#
if [ -f /var/run/pluto/pluto.pid ]; then ../../pluto/bin/ipsec-look.sh ; fi
if [ -f /var/run/pluto/pluto.pid ]; then egrep "Message ID: [0-9] " /tmp/pluto.log  ; fi
if [ -f /var/run/charon.pid ]; then strongswan status ; fi
: ==== cut ====
if [ -f /var/run/pluto/pluto.pid ]; then ipsec auto --status ; fi
if [ -f /var/run/charon.pid ]; then strongswan statusall ; fi
: ==== tuc ====
../bin/check-for-core.sh
if [ -f /sbin/ausearch ]; then ausearch -r -m avc -ts recent ; fi
: ==== end ====
