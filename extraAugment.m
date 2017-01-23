function [ output_args ] = extraAugment( H, K, R, t, img, P )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here
figure
imagesc(img)
hold on
if R(:, 3)' * t > 0
    R(:, 3) = -R(:, 3);
end
M = K * [R, t];
p = M * P;
p_real = [p(1, :) ./ p(3, :); p(2, :) ./ p(3, :)];
plot(p_real(1, 1:2), p_real(2, 1:2), 'Color','r', 'LineWidth', 3)
plot(p_real(1, 2:3), p_real(2, 2:3), 'Color','r', 'LineWidth', 3)
plot([p_real(1, 1), p_real(1, 3)], [p_real(2, 1), p_real(2, 3)], 'Color','r', 'LineWidth', 3)
plot([p_real(1 ,1), p_real(1, 4)], [p_real(2, 1), p_real(2, 4)], 'Color','r', 'LineWidth', 3)
plot([p_real(1, 3), p_real(1, 4)], [p_real(2, 3), p_real(2, 4)], 'Color','r', 'LineWidth', 3)
plot([p_real(1, 2), p_real(1, 4)], [p_real(2, 2), p_real(2, 4)], 'Color','r', 'LineWidth', 3)
plot([p_real(1, 5), p_real(1, 6)], [p_real(2, 5), p_real(2, 6)], 'Color','r', 'LineWidth', 3)
plot([p_real(1, 6), p_real(1, 7)], [p_real(2, 6), p_real(2, 7)], 'Color','r', 'LineWidth', 3)
plot([p_real(1, 5), p_real(1, 7)], [p_real(2, 5), p_real(2, 7)], 'Color','r', 'LineWidth', 3)
plot([p_real(1, 8), p_real(1, 9)], [p_real(2, 8), p_real(2, 9)],'Color','r', 'LineWidth', 3)
plot([p_real(1, 9), p_real(1, 10)], [p_real(2, 9), p_real(2, 10)], 'Color','r', 'LineWidth', 3)
plot([p_real(1, 8), p_real(1, 10)], [p_real(2, 8), p_real(2, 10)], 'Color','r', 'LineWidth', 3)

hold off
end

