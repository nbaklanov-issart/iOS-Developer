import RPi.GPIO as GPIO
import os
import sys
import time
import subprocess

SENSOR_PIN = 11

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)

GPIO.setup(SENSOR_PIN, GPIO.IN)

while True:
    signal = GPIO.input(SENSOR_PIN)
    if signal == 0:
        time.sleep(0.1)
    elif signal == 1:
        time.sleep(0.1)
        os.system('/home/pi//webcam.sh')
