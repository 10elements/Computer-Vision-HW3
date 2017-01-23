load part2params.mat
im2 = imread('images2.png');
im9 = imread('images9.png');
im12 = imread('images12.png');
im20 = imread('images20.png');

pw = [0, 0.09, 0.09, 0.09, 0.03, 0.09, 0.09, 0.06, 0.09, 0.09;...
      0.09, 0.09, 0, 0.09, 0.09, 0.09, 0.03, 0.09, 0.09, 0.06;...
      0, 0, 0, 0.09, 0.03, 0.03, 0.03, 0.06, 0.06, 0.06];
pw = [pw; ones(1, 10)];
extraAugment(H_2_harris, K, R2_ha, t2_ha, im2, pw)
extraAugment(H_9_harris, K, R9_ha, t9_ha, im9, pw)
extraAugment(H_12_harris, K, R12_ha, t12_ha, im12, pw)
extraAugment(H_20_harris, K, R20_ha, t20_ha, im20, pw)