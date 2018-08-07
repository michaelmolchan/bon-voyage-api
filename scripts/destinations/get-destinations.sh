#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> sh scripts/destinations/get-destinations.sh

curl "http://localhost:4741/destinations" \
  --include \
  --request GET \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \

echo
