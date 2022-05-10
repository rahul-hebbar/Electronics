clc
clear all;
close all;
I=imread('fan_move_stop.png');
g=rgb2gray(I);
Iblur1 = imgaussfilt(g,2);
figure 
imshow(Iblur1)
level=graythresh(Iblur1)
bw=imbinarize(Iblur1,level);
figure
imshow(bw)
se=strel('disk',20);
fc=imclose(bw,se);
imshow(~fc)
bw2=edge(~fc,'sobel');
figure 
imshow(~bw2)
% bw3=bwareaopen(bw2,100);
% figure
% imshow(bw3)
% bw4 = bwmorph(bw3,'remove',5);
% figure
% imshow(bw4)
% bw5 = bwmorph(bw4,'thin',Inf);

% imshow(bw5)
% bw6=imfill(bw5,'holes');
% figure
% imshow(bw6)
% bw7=regionfill(Iblur1,bw6)
