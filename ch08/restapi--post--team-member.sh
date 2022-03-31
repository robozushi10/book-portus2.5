#!/bin/bash
H1="Accept: application/json"
H2='Portus-Auth: admin:pysVudJ-zxBy64DbdZWW'
H3='Content-Type: application/json'
P=$(< <(cat <<EOF
{
 "role": "contributor",
 "user": "testuser"
}
EOF
))
curl -s -k -X POST -H "$H1" -H "$H2" -H "$H3" -d "$P" 'https://docker.registry.local:29443/api/v1/teams/9/members' | jq .


