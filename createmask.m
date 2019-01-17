function [ ] = createmask(imname) %creating function

I = imread(imname); %reading the original image
imshow(I); 
%%
h = imfreehand(gca);    %drawing outline for the desired figure
position = wait(h);
binaryImage = h.createMask();

%imshow(binaryImage); %display the freehand mask
%%
%saving the file 
folder = 'your_path_name'; %location where you want to save the file
fullFileName = fullfile(folder,'file_name'); %give file name with which you want to save the file
imwrite(binaryImage,fullFileName);
imshow(binaryImage);