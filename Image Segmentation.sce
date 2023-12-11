// Image Segmentation

clc;
disp("Jay Rathod T127");


// Shape of DOG Filter
disp("Shape of DOG Filter");
sigma1 = input("Enter the value of sigma 1: ");
sigma2 = input("Enter the value of sigma 2: ");
i=-10:.1:10;
j=-10:.1:10;
r=sqrt(i.*i+j.*j);
y1=(1/(sigma1^2))*(((r.*r)/sigma1^2)-1).*exp(-r.*r/2*sigma1^2); 
y2=(1/(sigma2^2))*(((r.*r)/sigma2^2)-1).*exp(-r.*r/2*sigma2^2); 
y=y1-y2; 
subplot(1,2,1)
plot(i,y) 
xtitle('Shape of DOG Filter') 





// Differentiation of Gaussian Function
disp("Differentiation of Gaussian Function using value of Sigma1");
sigma = sigma1;
i= -10:.1:10; 
j= -10:.1:10; 
r=sqrt(i.*i+j.*j); 
y=(1/( sigma^2))*(((r.*r)/sigma^2)-1).*exp(-r.*r/2*sigma^2); 
subplot(1,2,2)
plot(i,y) ;
legend(sprintf('The sigma value is: ',sigma)); 
xtitle('Differentiation of Gaussian function'); 











