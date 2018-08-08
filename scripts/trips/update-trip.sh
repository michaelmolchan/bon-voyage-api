#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> ID=<ID> CITY=<CITY> COUNTRY=<COUNTRY> sh scripts/trips/update-trip.sh

curl "http://localhost:4741/trips/{$ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "trip": {
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "country": "'"${COUNTRY}"'"
    }
  }'

echo
