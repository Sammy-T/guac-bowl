#! /bin/bash

cat /home/guac-init/schema/*.sql | psql -U postgres -d guac_db -f -