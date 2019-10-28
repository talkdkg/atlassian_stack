#!/usr/bin/env bash
echo "stopping  crowd"
/opt/crowd/atlassian-crowd-3.7.0/stop_crowd.sh
sleep 5
echo "starting crowd"
/opt/crowd/atlassian-crowd-3.7.0/start_crowd.sh