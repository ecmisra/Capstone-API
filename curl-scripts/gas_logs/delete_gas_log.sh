#!/bin/bash

curl "http://localhost:4741/gas_logs/${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=${TOKEN}"

echo
