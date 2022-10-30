curl -X PUT "https://api.cloudflare.com/client/v4/zones/1e02aeabcf2b885a42ffeab110dd1886/firewall/rules/a7f1bce6765d4a1b928e59f822a70595" \
     -H "X-Auth-Email: f1kizzvn001@gmail.com" \
     -H "X-Auth-Key: d6bb2120a8a2e0ed2f96a018274266d2bbc07" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "challenge",
     "priority": 3000,
     "paused":false,
     "description": "captchaVN",
     "filter": {
    "id": "984e064edfe1409690bb386bd6d64348",
    "expression": "(ip.geoip.country eq \"VN\")",
    "paused": false,
    "description": "captchaVN"
  }
  }'
