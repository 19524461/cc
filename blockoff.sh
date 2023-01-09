curl -X PUT "https://api.cloudflare.com/client/v4/zones/1e02aeabcf2b885a42ffeab110dd1886/firewall/rules/b98dfe98c9aa401eb2b2cb3e592c388c" \
     -H "X-Auth-Email: f1kizzvn001@gmail.com" \
     -H "X-Auth-Key: d6bb2120a8a2e0ed2f96a018274266d2bbc07" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 2000,
     "paused":true,
     "description": "BL QT",
     "filter": {
    "id": "f018b0898f604ece888d23302ffc3fbf",
    "expression": "(not ip.geoip.country in {\"VN\"})",
    "paused": false,
    "description": "BLOCK QT"
  }
  }'
