import numpy as np
import cv2 as cv

img1 = cv.imread('messi5.jpg')
img2 = cv.imread('opencv-logo.png')

dst = cv.addWeighted(img1, 0.7, img2, 0.3, 0)

cv.imshow('dst',dst)
cv.waitKey(0)
cv.destroyAllWindows()


rows,cols,channels = img2.shape
roi = img1[0:rows, 0:cols ]

img2gray = cv.cvtColor(img2,cv.COLOR_BGR2GRAY)
cv.imshow('dst',img2gray)
cv.waitKey(0)
cv.destroyAllWindows()



ret, mask = cv.threshold(img2gray, 10, 255, cv.THRESH_BINARY)
cv.imshow('dst',mask)
cv.waitKey(0)
cv.destroyAllWindows()


mask_inv = cv.bitwise_not(mask)
cv.imshow('dst',mask_inv)
cv.waitKey(0)
cv.destroyAllWindows()



img1_bg = cv.bitwise_and(roi,roi,mask = mask_inv)
cv.imshow('dst',img1_bg)
cv.waitKey(0)
cv.destroyAllWindows()




img2_fg = cv.bitwise_and(img2,img2,mask = mask)
cv.imshow('dst',img2_fg)
cv.waitKey(0)
cv.destroyAllWindows()


dst = cv.add(img1_bg,img2_fg)

img1[0:rows, 0:cols ] = dst
cv.imshow('res',img1)
cv.waitKey(0)
cv.destroyAllWindows()