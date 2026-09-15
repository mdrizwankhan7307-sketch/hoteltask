#!/bin/bash
TIMESTAMP=$(date +"%Y%m%d%H%M%S")
docker exec -t db pg_dump -U admin hotel_db > backup_$TIMESTAMP.sql
