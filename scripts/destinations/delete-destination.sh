#!/bin/bash

RUN WITH:
TOKEN=<CURRENT TOKEN> ID=<ID> sh scripts/destinations/delete-destination.sh

curl "http://localhost:4741/destinations/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
