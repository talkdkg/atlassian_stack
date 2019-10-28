#!/usr/bin/env bash
echo "Starting docker"
systemctl start docker
echo "Shutting down confluence"
docker container stop confluence
echo "Shuttting down postgres && pg_admin"
docker-compose  -f atlassian_stack/1_postgres_pgadmin/docker-compose.yml down
echo "Starting postgres && pg_admin"
docker-compose -f atlassian_stack/1_postgres_pgadmin/docker-compose.yml up -d
sleep 5
echo "starting confluence"
docker container start confluence
echo "List active services"
docker container ls