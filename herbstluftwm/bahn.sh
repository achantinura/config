#!/bin/bash  

url='http://live.kvv.de/webapp/departures/bystop/de:8212:65?key=377d840e54b59adbe53608ba1aad70e8&maxInfos=2'  
#/usr/bin/curl -s ${url} | grep -Eo '("Hbf-Wolfartsweier","direction":"2","time":"[0-9]....")' | cut -c 45-49   
curl -s ${url} | python -m json.tool | grep -E "Siemensallee" -A 6 | grep '\"time\":' | cut -d '"' -f 4 | sed 's/^0/sofort/'
