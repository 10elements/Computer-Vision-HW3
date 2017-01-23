cm_point1 = [422, 323];
org_point1 = [2, 2, 2];
cm_point2 = [178, 323];
org_point2 = [-2, 2, 2];
cm_point3 = [118 483];
org_point3 = [-2 2 -2];
cm_point4 = [482 483];
org_point4 = [2 2 -2];
cm_point5 = [438 73];
org_point5 = [2 -2 2];
cm_point6 = [2 -2 2];
cm_point6 = [162 73];
org_point6 = [-2 -2 2];
cm_point7 = [78 117];
org_point7 = [-2 -2 -2];
cm_point8 = [522 117];
org_point8 = [2 -2 -2];
rows_1 = transfer(org_point1, cm_point1);
rows_2 = transfer(org_point2, cm_point2);
rows_3 = transfer(org_point3, cm_point3);
rows_4 = transfer(org_point4, cm_point4);
rows_5 = transfer(org_point5, cm_point5);
rows_6 = transfer(org_point6, cm_point6);
rows_7 = transfer(org_point7, cm_point7);
rows_8 = transfer(org_point8, cm_point8);
p = [rows_1; rows_2; rows_3; rows_4; rows_5; rows_6; rows_7; rows_8]
[U, S, V] = svd(p);
M_t = reshape(V(:,12), [4, 3]);
M = M_t'
[U_1, S_1, V_1] = svd(M);
t_cw = V_1(1:3,4)/V_1(4,4)
M_prime = M(1:3,1:3);
M_prime = M_prime .* (1/M_prime(3,3))
cosThetaX = M_prime(3, 3) ./ sqrt(M_prime(3, 3) .^ 2 + M_prime(3, 2) .^ 2)
sinThetaX = -M_prime(3, 2) ./ sqrt(M_prime(3, 3) .^ 2 + M_prime(3, 2) .^ 2)
R_x = [1, 0, 0; 0, cosThetaX, -sinThetaX; 0, sinThetaX, cosThetaX]
thetaX = asin(sinThetaX)
thetaX = (thetaX  / pi) * 180

N = M_prime * R_x
cosThetaZ = N(2, 2) ./ sqrt(N(2, 1) .^ 2 + N(2, 2) .^ 2)
sinThetaZ = -N(2, 1) ./ sqrt(N(2, 1) .^ 2 + N(2, 2) .^2)
thetaZ = asin(sinThetaZ)
thetaZ = (thetaZ / pi) * 180
R_z = [cosThetaZ, -sinThetaZ, 0; sinThetaZ, cosThetaZ, 0; 0, 0, 1]
K = N * R_z;
K = K .* (1 ./ K(3, 3))