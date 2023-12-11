import cv2
import numpy as np
import matplotlib.pyplot as plt
   
# Read an image
image_Grey = cv2.imread('C:\\Users\\jayan\\Documents\\Sem 6\\DIP\\Jay_GreyScale_img.jpg')
   
# Apply log transformation method
c = 255 / np.log(1 + np.max(image_Grey))
log_image = c * (np.log(image_Grey + 1))
   
# Specify the data type so that
# float value will be converted to int
log_transformed_image = np.array(log_image, dtype = np.uint8)

# Save edited images.
cv2.imwrite('log_transformed_image'+'.jpg', log_transformed_image)
   
# Display both images
plt.imshow(image_Grey)
plt.show()
plt.imshow(log_transformed_image)
plt.show()
