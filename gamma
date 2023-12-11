import cv2
import numpy as np
import matplotlib.pyplot as plt
  
# Open the image.
img_Grey = cv2.imread('C:\\Users\\jayan\\Documents\\Sem 6\\DIP\\Jay_GreyScale_img.jpg')
  
# Trying 4 gamma values.
for gamma in [0.1, 0.5, 1.2, 2.2]:
      
    # Apply gamma correction.
    gamma_corrected = np.array(255*(img_Grey / 255) ** gamma, dtype = 'uint8')
  
    # Save edited images.
    cv2.imwrite('gamma_transformed'+str(gamma)+'.jpg', gamma_corrected)

    # Display gamma corrected images
    plt.imshow(gamma_corrected)
    plt.show()
