import cv2 as cv
import sys

img1 = cv.imread(sys.argv[1])
cv.imshow("original", img1)
detector = cv.BRISK_create()
norm = cv.NORM_HAMMING
#matcher = cv.BFMatcher(norm)
kp1, desc1 = detector.detectAndCompute(img1, None)
img2 = cv.drawKeypoints(img1, kp1, None, flags=cv.DRAW_MATCHES_FLAGS_DRAW_RICH_KEYPOINTS)
cv.imshow("features", img2)
cv.waitKey()
