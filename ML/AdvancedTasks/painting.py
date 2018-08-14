import numpy as np
import cv2 as cv
import pytesseract as ts

starting_image = cv.imread('color_page_01.jpg')
width, height = starting_image.shape[:2]

starting_image_invert = cv.bitwise_not(starting_image)
starting_image_gray = cv.cvtColor(starting_image_invert, cv.COLOR_BGR2GRAY)

ret, thresh_image = cv.threshold(starting_image_gray, 0, 255, cv.THRESH_BINARY+cv.THRESH_OTSU)
retval, labels, stats, centroids = cv.connectedComponentsWithStats(thresh_image)
contours_image, contours, hierarchy = cv.findContours(thresh_image, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)

index = 0
for currentLabel in stats:
    blank_image = np.zeros([width, height], dtype=np.uint8)
    for i in range(width):
        for j in range(height):
            if labels[i, j] == index: blank_image[i, j] = 255
    index = index + 1
   # blank_image = cv.bitwise_not(blank_image)
    ret, thresh_image = cv.threshold(blank_image, 0, 255, cv.THRESH_BINARY + cv.THRESH_OTSU)
    print(ts.image_to_data(thresh_image))
    cv.imshow("start image", blank_image)
    cv.waitKey(0)




'''
maxLabel = -1
maxArea = -1

for i in range(width):
    for j in range(height):
        if labels[i, j] == 1: starting_image[i, j] = 255


starting_image_invert = cv.bitwise_not(starting_image)
starting_image_gray = cv.cvtColor(starting_image_invert, cv.COLOR_BGR2GRAY)

ret, thresh_image = cv.threshold(starting_image_gray, 0, 255, cv.THRESH_BINARY+cv.THRESH_OTSU)
retval, labels, stats, centroids = cv.connectedComponentsWithStats(thresh_image)


blank_image = np.zeros([width, height], dtype=np.uint8)
for i in range(width):
    for j in range(height):
        if labels[i, j] == 12: blank_image[i, j] = 255

#for i in range(retval):
#    if stats[i, cv.CC_STAT_AREA] > maxArea:
#        maxLabel = i
#        maxArea = stats[i, cv.CC_STAT_AREA]

#print(ts.image_to_string(starting_image))

#cv.drawContours(starting_image, contours, -1, (255,255,255), 3)

#print(ts.image_to_data(blank_image))

cv.imshow("start image", blank_image)
cv.waitKey(0)
cv.destroyAllWindows()
'''

