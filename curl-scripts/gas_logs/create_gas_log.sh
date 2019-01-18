#!/bin/bash

curl "http://localhost:4741/gas_logs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "gas-log": {
      "date": "'"${DATE}"'",
      "odometer": "'"${ODO}"'",
      "volume": "'"${VOL}"'",
      "type": "'"${TYPE}"'",
      "brand": "'"${BRAND}"'",
      "price": "'"${PRICE}"'",
      "total": "'"${TOTAL}"'",
    }
  }'

echo
