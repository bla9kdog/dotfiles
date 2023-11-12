#!/usr/bin/env python3

import requests
import os

response = requests.get('https://api.gemini.com/v1/pricefeed')
jsonResponse = response.json()

for i in jsonResponse:
    if i["pair"] == "BTCUSD":
        price = str(round((float(i["price"])), 2))
        os.system('sketchybar -m --set btc label=' + price + 'USD')
        break
