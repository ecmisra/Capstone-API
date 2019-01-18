#!/bin/bash

curl "http://localhost:4741/gas_logs" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}"

echo
