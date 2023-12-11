// Image Compression
clc;
disp("Jay Rathod T127");

disp("Image Compression");

function imCompressed = compress(imFullOneChannel, SingularValuesToKeep)
    [U, Sigma, V] = svd(imFullOneChannel);
    SingularValues = diag(Sigma)
    imCompressed = U(:, 1:SingularValuesToKeep)*diag(SingularValues(1:SingularValuesToKeep))*V(:, 1:SingularValuesToKeep)'
endfunction

im = imread("C:\Users\jayan\Documents\Sem 6\DIP\Deadspy_resized.jpg");
figure(1);
imshow(uint8(im));
title('Orignal Image');

imFull = double(im);

imCompressed(:, :, 1) = compress(imFull(:, :, 1), 50);
imCompressed(:, :, 2) = compress(imFull(:, :, 2), 50);
imCompressed(:, :, 3) = compress(imFull(:, :, 3), 50);

imCompressedFinal = uint8(imCompressed);
figure(2);
imshow(imCompressedFinal);
title('Compressed Image');

imwrite(uint8(im),'C:\Users\jayan\Documents\Sem 6\DIP\Deadspy Orignal Image.jpg');
imwrite(imCompressedFinal, 'C:\Users\jayan\Documents\Sem 6\DIP\Deadspy Compressed Image.jpg');

disp("Image Compression Completed *_*... ");

// Will give bytes of info
disp("Comparing Both File Sizes: ");
[x, ierr]=fileinfo("C:\Users\jayan\Documents\Sem 6\DIP\Deadspy Orignal Image.jpg");
disp("Orignal Image: ",x(1));
[x, ierr]=fileinfo("C:\Users\jayan\Documents\Sem 6\DIP\Deadspy Compressed Image.jpg");
disp("Compressed Image: ", x(1));







/*
//Arithmetic Coding
disp("Arithmetic Coding");
n=input("Enter the no. of symbols : "); 
for i = 1:n 
printf("\nEnter the probability(<=1) of symbol %d: ",i);//Input: Taking the probability of occurence 
p(i)=input(""); 
end 
printf("\nThe cdf of symbol 1: %.3f ",p(1)); 
c(1)=p(1); 
for i = 2:n 
c(i)=p(i)+c(i-1); 
printf("\nThe cdf of symbol %d: ",i); 
printf("%.3f",c(i)); 
end 
s=input("Enter the no. of symbols in sequence");
printf("Enter the sequence "); 
for j = 1:s 
b(j)=input("");//Inserting the sequence 
end 
//Setting the lower and upper limit for 1st stage 
if b(1) == 1 then 
l(1)=0; 
u(1)=c(b(1)); 
else 
l(1)=c(b(1)-1); 
u(1)=c(b(1)); 
end 
//Calculating lower and upper limits for 2nd stage and ahead 
for k = 2:s 
if b(k) == 1 then 
l(k)=l(k-1); 
u(k)=l(k-1)+((u(k-1)-l(k-1))*c(b(k))); 
else 
l(k)=l(k-1)+((u(k-1)-l(k-1))*c(b(k)-1)); 
u(k)=l(k-1)+((u(k-1)-l(k-1))*c(b(k))); 
end 
end 
tag=(l(s)+u(s))/2;//Generating tag 
printf("The tag of the sequence is= %.10f",tag);
//Output: The tag of the sequence 
//Output for ex tag=0.1375781250



// Run length Coding
in=input('Enter square matrix::::'); 
[m,n]=size(in); 
y=0; 
tx(1)=0; 
o=1 
for j=1:m 
for k=1:n 
x=in(j,k); 
if x==y 
tx(o)=tx(o)+1; 
else 
o=o+1; 
tx(o)=1; 
end 
y=x; 
end 
end
disp('code sucsess'); 
disp(tx);
*/




