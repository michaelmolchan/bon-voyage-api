#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> ID=<ID> sh scripts/destinations/get-destination.sh

curl "http://localhost:4741/destinations/{$ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
