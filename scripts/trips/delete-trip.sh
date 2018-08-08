#!/bin/bash

# RUN WITH:
# TOKEN=<CURRENT TOKEN> ID=<ID> sh scripts/trips/delete-trip.sh

curl "http://localhost:4741/trips/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
