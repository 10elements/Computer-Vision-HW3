%%overlay apple on each image
% load part2params.mat
% im_apple = imread('1.jpg');
% im2 = imread('images2.png');
% opt2 = imgAugment(H_2_harris, im_apple, im2);
% figure
% hold on
% imshow(opt2)
% hold off
% im9 = imread('images9.png');
% opt9 = imgAugment(H_9_harris, im_apple, im9);
% figure 
% hold on
% imshow(opt9)
% hold off
% im12 = imread('images12.png');
% opt12 = imgAugment(H_12_harris, im_apple, im12);
% figure
% hold on
% imshow(opt12)
% hold off
% im20 = imread('images20.png');
% opt20 = imgAugment(H_20_harris, im_apple, im20);
% figure
% hold on
% imshow(opt20)
% hold off

%%augment the cube

P = [0, 0, 0.09, 0.09, 0, 0, 0.09, 0.09; ...
    0, 0.09, 0.09, 0, 0, 0.09, 0.09, 0; ...
    0.09, 0.09, 0.09, 0.09, 0, 0, 0, 0];
P = [P;ones(1,8)];
im2 = imread('images2.png');
ObjAugment(H_2_harris, K, R2_ha, t2_ha, im2, P);
im9 = imread('images9.png');
ObjAugment(H_9_harris, K, R9_ha, t9_ha, im9, P);
im12 = imread('images12.png');
ObjAugment(H_12_harris, K, R12_ha, t12_ha, im12, P);
im20 = imread('images20.png');
ObjAugment(H_20_harris, K, R20_ha, t20_ha, im20, P);

