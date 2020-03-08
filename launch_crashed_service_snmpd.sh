#!/bin/bash

service snmpd status | grep -q 'active (running)'

if [ $? -ne 0 ]
then
        sudo service snmpd restart > /dev/null
fi

#Crontab
#*/1 * * * * /opt/launch_crashed_service_snmpd.sh > /dev/null 2>
