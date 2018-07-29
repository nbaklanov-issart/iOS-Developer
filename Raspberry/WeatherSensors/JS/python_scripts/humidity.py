#!/usr/bin/python

import sys
import Adafruit_DHT

humidity, temperature = Adafruit_DHT.read_retry(22, 24)
if humidity is not None and temperature is not None:
    print(humidity)
else:
    print(-1)
