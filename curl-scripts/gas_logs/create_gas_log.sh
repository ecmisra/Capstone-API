#!/bin/bash

curl "http://localhost:4741/gas_logs" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "gas_log": {
      "date": "'"${DATE}"'",
      "odometer": "'"${ODO}"'",
      "volume": "'"${VOL}"'",
      "fuel": "'"${TY}"'",
      "brand": "'"${BRAND}"'",
      "price": "'"${PRICE}"'",
      "total": "'"${TOTAL}"'"
    }
  }'

echo
