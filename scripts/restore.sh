#!/bin/bash
docker exec -i db psql -U admin -d hotel_db < $1
