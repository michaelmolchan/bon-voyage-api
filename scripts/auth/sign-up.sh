#!/bin/bash

# RUN WITH:
# EMAIL=<EMAIL> PASSWORD=<PASSWORD> scripts/auth/sign-up.sh

curl "http://localhost:4741/sign-up" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "credentials": {
      "email": "'"${EMAIL}"'",
      "password": "'"${PASSWORD}"'",
      "password_confirmation": "'"${PASSWORD}"'"
    }
  }'

echo
