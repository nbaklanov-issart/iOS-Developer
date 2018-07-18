import numpy as np
import cv2 as cv

img = cv.imread('messi5.jpg')
px = img[100,100]
print(px)

blue = img[100,100,0]
print(blue)

tempItem = img.item(10,10,2)
print(tempItem)

img.itemset((10,10,2),100)
tempItem = img.item(10,10,2)
print(tempItem)

print(img.shape)
print(img.size)
print(img.dtype)

ball = img[280:340, 330:390]
img[273:333, 100:160] = ball
img[:,:,2] = 0
img[:,:,1] = 0
cv.imwrite("messi-mod.jpg", img)