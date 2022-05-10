% Read color photo
names = dir('color');
files = {names(:).name};
tot = length(files)-2;
m = ceil(tot/4);
n = ceil(tot/m);
for k=3:tot+2
    path = append('color/',files{k});
    A = imread(path);
    
    % Convert to grayscale
    gray = rgb2gray(A);
    
    % Make binary image fixed size
    gray = imresize(gray,[1000,1000]);
    
    % Binarize the image
%     gray(gray < 17) = 0;
%     gray(gray > 17) = 255;
    
    % Thinning
%     object = Susan_thin;
%     gray = object.thin_main(object,gray);
    
%     gray = bwmorph(gray,'thin');
%     gray = bwmorph(gray,'spur');
    se = strel('disk',3);
    gray = imclose(gray,se);
    gray = logical(gray);
    gray = bwskel(gray);
    
    % Plotting
    subplot(m,n,k-2),imshow(gray,[0,1]);
    title(files{k});
end

% OTHER CODE
% BW = imbinarize(gray);
% BW2 = bwmorph(BW,'fill');
% out = bwskel(BW);
% imshow(BW2);
% level = graythresh(gray);
% gray = imbinarize(gray,level);