#!/usr/bin/env bash
echo "Starting docker"
systemctl start docker
echo "Shutting down jira"
docker container stop jira
sleep 5
echo "starting jira"
docker container start jira
echo "List active services"
docker container ls