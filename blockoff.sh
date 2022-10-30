curl -X PUT "https://api.cloudflare.com/client/v4/zones/1e02aeabcf2b885a42ffeab110dd1886/firewall/rules/f57d89ce2b22450f915e87c4df2c9ab0" \
     -H "X-Auth-Email: f1kizzvn001@gmail.com" \
     -H "X-Auth-Key: d6bb2120a8a2e0ed2f96a018274266d2bbc07" \
     -H "Content-Type: application/json" \
     --data '{
     "action": "block",
     "priority": 2000,
     "paused":true,
     "description": "BLOCK QT",
     "filter": {
    "id": "ed6539a0f05c42568848bbee91ec8ee8",
    "expression": "(not ip.geoip.country in {\"VN\"})",
    "paused": false,
    "description": "BLOCK QT"
  }
  }'
