#!/bin/bash
H1="Accept: application/json"
H2='Portus-Auth: admin:pysVudJ-zxBy64DbdZWW'
curl -s -k -X GET -H "$H1" -H "$H2" 'https://docker.registry.local:29443/api/v1/repositories/6/tags'| jq -r .

