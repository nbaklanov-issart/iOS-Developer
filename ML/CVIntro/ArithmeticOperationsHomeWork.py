import numpy as np
import cv2 as cv
import time

firstImageScale = 0
secondImageScale = 0

backImage = None

img1 = cv.imread('slides/al.jpg')
img2 = cv.imread('slides/ba.jpg')
img3 = cv.imread('slides/bak.jpg')
img4 = cv.imread('slides/bar.jpg')

arr = np.array([img1, img2, img3, img4])

for currentImage in arr:

    if backImage is None:
        backImage = currentImage
    else:
        firstImageScale = 1
        secondImageScale = 0

        #print(backImage.shape)
        #print(currentImage.shape)

        for k in range(10):
            dst = cv.addWeighted(backImage, firstImageScale, currentImage, secondImageScale, 0)
            cv.imshow('dst', dst)
            cv.waitKey(0)

            firstImageScale = firstImageScale - 0.1
            secondImageScale = secondImageScale + 0.1
        backImage = currentImage