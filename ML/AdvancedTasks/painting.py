import numpy as np
import cv2 as cv
import pytesseract as ts

starting_image = cv.imread('color_page_01.jpg')
starting_image_invert = cv.bitwise_not(starting_image)
starting_image_gray = cv.cvtColor(starting_image_invert, cv.COLOR_BGR2GRAY)
width, height = starting_image.shape[:2]

colors = []
colors.append((144, 238, 144))
colors.append((0, 100, 0))
colors.append((255, 255, 255))
colors.append((0, 255, 255))
colors.append((80, 127, 255))
colors.append((203, 192, 255))
colors.append((255, 0, 255))



ret, thresh_image = cv.threshold(starting_image_gray, 0, 255, cv.THRESH_BINARY+cv.THRESH_OTSU)
retval, labels, stats, centroids = cv.connectedComponentsWithStats(thresh_image)

new_img = np.zeros_like(thresh_image)
largest_label = 1 + np.argmax(stats[1:, cv.CC_STAT_AREA])
new_img[labels == largest_label] = 255

no_numbers = np.zeros_like(starting_image)
no_numbers[labels != largest_label] = 255
no_numbers_gray = cv.cvtColor(no_numbers, cv.COLOR_BGR2GRAY)
ret, no_numbers_thresh = cv.threshold(no_numbers_gray, 0, 255, cv.THRESH_BINARY+cv.THRESH_OTSU)
contours_image, contours, hierarchy = cv.findContours(no_numbers_thresh, cv.RETR_TREE, cv.CHAIN_APPROX_SIMPLE)


substracted_image = cv.bitwise_not(cv.subtract(starting_image_gray, new_img))
something = ts.image_to_boxes(substracted_image)

index = 0
for currentLabel in something:
    try:
        labelInt = int(currentLabel)
        x = stats[index, cv.CC_STAT_LEFT]
        y = stats[index, cv.CC_STAT_TOP]
        cv.floodFill(no_numbers, None, (x, y), colors[labelInt - 1])
    except:
        print(currentLabel)
    index += 1

cv.imshow("start image", no_numbers)
cv.waitKey(0)

