#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> ID=<ID> CITY=<CITY> COUNTRY=<COUNTRY> sh scripts/destinations/update-destination.sh

curl "http://localhost:4741/destinations/{$ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "destination": {
      "city": "'"${CITY}"'",
      "country": "'"${COUNTRY}"'"
    }
  }'

echo
