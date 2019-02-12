import RPi.GPIO as GPIO
import os
import datetime
import sys
import time
import subprocess

SENSOR_PIN = 11

GPIO.setwarnings(False)
GPIO.setmode(GPIO.BOARD)

GPIO.setup(SENSOR_PIN, GPIO.IN)

while True:
    i=GPIO.input(SENSOR_PIN)

    if i==0:                 
        print ("No intruders")    
        time.sleep(0.1)
    elif i==1:
        print ("Intruder detected")
        time.sleep(0.1)

        # read the absolute path
        script_dir = os.path.dirname(__file__)
        # call the .sh to capture the image
        os.system('/home/pi//webcam.sh')
        #get the date and time, set the date and time as a filename.
        currentdate = datetime.datetime.now().strftime("%Y-%m-%d_%H%M")
        # create the real path
        rel_path = currentdate +".jpg"
        #  join the absolute path and created file name
        abs_file_path = os.path.join(script_dir, rel_path)
        print(abs_file_path)

        

