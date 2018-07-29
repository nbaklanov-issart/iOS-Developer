#!/usr/bin/python

import smbus
import time
import os

DEVICE_ADDRESS = 0x5c
DEVICE_REG_ADDRESS = 0x20
ACTIVE_STATE_CONST = 0b11100000

class Amper():
    b = smbus.SMBus(1)
    def Calib(self):
        self.b.write_byte_data(DEVICE_ADDRESS,DEVICE_REG_ADDRESS,ACTIVE_STATE_CONST)
        
    def getX(self):
        return self.b.read_byte_data(0x5c, 0x28)
        
    def getY(self):
        return self.b.read_byte_data(0x5c, 0x29)

    def getZ(self):
        return self.b.read_byte_data(0x5c, 0x2a)
 
MMA7455 = Amper()
MMA7455.Calib()

time.sleep(1.0)

x = MMA7455.getX()
y = MMA7455.getY()
z = MMA7455.getZ()

d = z<<16|y<<8|x

print(d  * 0.75006375541921 / 4096.0)


   
