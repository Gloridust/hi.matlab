% demo3.m - 整合MATLAB绘图示例，确保各示例独立输出图形并提示状态
% 基本正弦函数绘制
x = linspace(0, 2*pi, 30);
y = sin(x);
figure;
plot(x, y);
grid on;
xlabel('自变量X');
ylabel('函数Y');
title('基本正弦函数图');
disp('基本正弦函数图已输出');
pause

% 多函数绘制与文本标注
x = linspace(0, 2*pi, 30);
y = sin(x);
z = cos(x);
figure;
plot(x, z, x, y);
gtext('sin(x)');
gtext('cos(x)');
disp('正弦余弦函数对比图已输出');
pause

% 特殊区间函数绘制
x = linspace(0.0001, 0.01, 1000);
y = sin(1./x);
figure;
plot(x, y);
axis([0.005 0.01 -1 1]);
disp('特定区间sin(1/x)函数图已输出');
pause

% 多函数叠加绘制示例
x = linspace(0, 2*pi, 30);
y = sin(x);
z = cos(x);
figure;
plot(x, y, 'ro:');
hold on;
plot(x, z);
hold off;
disp('正弦余弦函数叠加图已输出');
pause

% 多图形分开显示示例
x = linspace(0, 2*pi, 100);
y = sin(x);
z = cos(x);
figure;
plot(x, y);
title('正弦函数');
disp('正弦函数图形已输出');
pause(2);
figure;
plot(x, z);
title('余弦函数');
disp('余弦函数图形已输出');
pause

% 子图布局示例
x = linspace(0, 2*pi, 100);
y = sin(x);
z = cos(x);
a = sin(x).*cos(x);
b = sin(x)./(cos(x) + eps);
figure;
subplot(2, 2, 1);
plot(x, y);
title('正弦函数');
subplot(2, 2, 2);
plot(x, z);
title('余弦函数');
subplot(2, 2, 3);
plot(x, a);
title('正余弦乘积');
subplot(2, 2, 4);
plot(x, b);
title('正余弦商');
disp('四合一函数组合图已输出');
pause

% 图形缩放功能演示
x = linspace(0, 2*pi, 30);
y = sin(x);
figure;
plot(x, y);
zoom on;
disp('已输出可缩放的正弦函数图');
pause

% 二维散点图示例
try
    load seamount
    figure;
    scatter(x, y, s, z);
    disp('海底地形散点图已输出');
catch
    disp('海底地形数据未找到，跳过此示例');
end
pause

% 三维散点图示例
[x, y, z] = sphere(16);
X = [x(:)*.5 x(:)*.75 x(:)];
Y = [y(:)*.5 y(:)*.75 y(:)];
Z = [z(:)*.5 z(:)*.75 z(:)];
S = repmat([1 1.75 .5]*10, prod(size(x)), 1);
C = repmat([1 2 3], prod(size(x)), 1);
figure;
scatter3(X(:), Y(:), Z(:), S(:), C(:), 'filled');
view(-60, 60);
disp('三维球面散点图已输出');
pause

% 等高线图示例
[X, Y] = meshgrid(-2:.2:2, -2:.2:3);
Z = X.*exp(-X.^2 - Y.^2);
figure;
[C, h] = contour(X, Y, Z);
clabel(C, h);
colormap cool;
disp('二维等高线图已输出');
pause

% 二维与三维等高线对比
[x, y, z] = peaks;
figure;
subplot(1, 2, 1);
contour3(x, y, z, 16, 's');
grid;
xlabel('x');
ylabel('y');
zlabel('z');
title('三维等高线图');
subplot(1, 2, 2);
contour(x, y, z, 16, 's');
grid;
xlabel('x');
ylabel('y');
title('二维等高线图');
disp('二维与三维等高线对比图已输出');
pause
