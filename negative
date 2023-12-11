import cv2
import matplotlib.pyplot as plt

imgGray = cv2.imread('C:\\Users\\jayan\\Documents\\Sem 6\\DIP\\Jay_GreyScale_img.jpg',1)
plt.imshow(imgGray)
plt.show()
  
# get height and width of the image
height, width, _ = imgGray.shape
  
for i in range(0, height - 1):
    for j in range(0, width - 1):
          
        # Get the pixel value
        pixel = imgGray[i, j]
          
        # Negate each channel by 
        # subtracting it from 255
          
        # 1st index contains red pixel
        pixel[0] = 255 - pixel[0]
          
        # 2nd index contains green pixel
        pixel[1] = 255 - pixel[1]
          
        # 3rd index contains blue pixel
        pixel[2] = 255 - pixel[2]
          
        # Store new values in the pixel
        imgGray[i, j] = pixel
  
# Display the negative transformed image
plt.imshow(imgGray)
plt.show()

# Save edited images.
cv2.imwrite('negative_transformed'+'.jpg', imgGray)
