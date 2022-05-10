clc
clear all;
close all;
I=imread('fanmove6_stop.png');
figure
imshow(I)
g=rgb2gray(I);
level=graythresh(g)
bw=imbinarize(g,level);
figure
imshow(bw)
se=strel('disk',10);
fc=imclose(bw,se);
figure
imshow(fc)
bw5 = bwmorph(fc,'thin',Inf);
bw2=edge(~bw5,'sobel');
figure 
imshow(~bw2)
bw6 = bwmorph(bw2,'bridge',Inf);
bw7 = bwmorph(bw6,'diag',Inf);
bw8 = bwmorph(bw7,'thin',Inf);
figure 
imshow(~bw8)

