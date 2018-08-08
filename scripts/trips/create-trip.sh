#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> CITY=<CITY> STATE=<STATE> COUNTRY=<COUNTRY> sh scripts/trips/create-trip.sh

curl "http://localhost:4741/trips" \
  --include \
  --request POST \
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
