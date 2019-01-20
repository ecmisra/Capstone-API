#!/bin/bash

curl "http://localhost:4741/gas_logs/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "gas_log": {
      "date": "'"${DATE}"'",
      "odometer": "'"${ODO}"'",
      "volume": "'"${VOL}"'",
      "fuel": "'"${FUEL}"'",
      "brand": "'"${BRAND}"'",
      "price": "'"${PRICE}"'",
      "total": "'"${TOTAL}"'",
      "user_id": "'"${UID}"'"
    }
  }'

echo
