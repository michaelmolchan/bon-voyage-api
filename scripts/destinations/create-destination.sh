#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> CITY=<CITY> COUNTRY=<COUNTRY> sh scripts/destinations/create-destination.sh

curl "http://localhost:4741/destinations" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "destination": {
      "city": "'"${CITY}"'",
      "country": "'"${COUNTRY}"'"
    }
  }'

echo
