#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> sh scripts/trips/get-trips.sh

curl "http://localhost:4741/trips" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
