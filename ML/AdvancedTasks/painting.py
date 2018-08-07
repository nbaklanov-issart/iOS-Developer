import numpy as np
import cv2 as cv
import pytesseract as ts

starting_image = cv.imread('color_page_01.jpg')
starting_image = cv.bitwise_not(starting_image)
starting_image_gray = cv.cvtColor(starting_image, cv.COLOR_BGR2GRAY)

ret, thresh_image = cv.threshold(starting_image_gray, 0, 255, cv.THRESH_BINARY+cv.THRESH_OTSU)
im2, contours, hierarchy = cv.findContours(thresh_image, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)

width, height = starting_image.shape[:2]

blank_image = np.zeros((width, height, 3), np.uint8)
retval, labels, stats, centroids = cv.connectedComponentsWithStats(thresh_image)

for j in range(width):
    for i in range(height):
        if labels[j][i] > 0: blank_image[j][i] = 255




#cv.drawContours(starting_image, contours, -1, (255,255,255), 3)

#print(ts.image_to_data(blank_image))

cv.imshow("start image", blank_image)
cv.waitKey(0)
cv.destroyAllWindows()


