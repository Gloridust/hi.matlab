% demo2：数学软件基本编程实验1

%% 1. 数组元素的访问
x = [1 2 3 4 5 8 7 18];
y = 1:7;
z = 3:2:9;
v = [y z];
u = linspace(2, 9, 11);

% （1）访问单个元素
disp('=== 访问单个元素 ===');
disp(x(4)); 

% （2）访问块元素
x = [1 2 3 4 5 6 7 8 9 10];
y = x(2:2:11); % 步长为2
z = x(10:-3:1); % 逆序步长为-3
disp('=== 访问块元素 ===');
disp(y);
disp(z);

% （3）索引提取
m = x([1 3 8]); % 提取指定索引的元素
disp('=== 索引提取 ===');
disp(m);

%% 2. 数组方向控制
c = [1; 2; 3; 4]; % 列向量
b = c'; % 转置为行向量
disp('=== 数组方向控制 ===');
disp(b);

%% 3. 数组运算
% （1）标量-数组运算
a = [1 2 3 4; 5 6 7 8; 9 10 11 12];
c_scalar = 2;

a1 = a + c_scalar;
a2 = a * c_scalar;
a3 = a / c_scalar; % 矩阵左除，注意维度匹配
a4 = c_scalar ./ a; % 点除法，标量除以矩阵每个元素
a5 = a .^ c_scalar; % 矩阵每个元素的幂运算
a6 = c_scalar .^ a; % 标量的矩阵幂运算

disp('=== 标量-数组运算 ===');
disp('a1 = a + c_scalar');
disp(a1);
disp('a2 = a * c_scalar');
disp(a2);
disp('a3 = a / c_scalar');
disp(a3);
disp('a4 = c_scalar ./ a');
disp(a4);
disp('a5 = a .^ c_scalar');
disp(a5);
disp('a6 = c_scalar .^ a');
disp(a6);

% （2）数组-数组运算
a = [2 2 2];
b = [3 3 3];
c_add = a + b; % 元素相加
c_mul = a .* b; % 元素相乘
c_div = a ./ b; % 元素相除
c_pow = a .^ b; % 元素幂运算

disp('=== 数组-数组运算 ===');
disp('c_add = a + b');
disp(c_add);
disp('c_mul = a .* b');
disp(c_mul);
disp('c_div = a ./ b');
disp(c_div);
disp('c_pow = a .^ b');
disp(c_pow);

%% 4. 矩阵操作
% 创建特殊矩阵
zero_mat = zeros(2,3); % 零矩阵
ones_mat = ones(2,3); % 全1矩阵
eye_mat = eye(3); % 单位矩阵

% 矩阵元素提取
matrix = [
    1 2 3;
    4 5 6;
    7 8 9
];
first_row = matrix(1,:); % 提取第1行
second_col = matrix(:,2); % 提取第2列
column_vector = matrix(:); % 拉伸为列向量
sub_matrix = matrix(1:2,1:2); % 提取子矩阵

disp('=== 矩阵操作 ===');
disp('零矩阵：');
disp(zero_mat);
disp('全1矩阵：');
disp(ones_mat);
disp('单位矩阵：');
disp(eye_mat);
disp('=== 矩阵元素提取 ===');
disp('matrix 的第1行：');
disp(first_row);
disp('matrix 的第2列：');
disp(second_col);
disp('matrix 拉伸为列向量：');
disp(column_vector);
disp('matrix 的子矩阵：');
disp(sub_matrix);

% 矩阵运算
A = [1 2;3 4];
B = [5 6;7 8];
mat_sum = A + B; % 矩阵加法
mat_prod = A * B; % 矩阵乘法
det_A = det(A); % 行列式
inv_A = inv(A); % 逆矩阵
[V,D] = eig(A); % 特征值和特征向量

disp('=== 矩阵运算 ===');
disp('A + B：');
disp(mat_sum);
disp('A * B：');
disp(mat_prod);
disp('det(A)：');
disp(det_A);
disp('inv(A)：');
disp(inv_A);
disp('eig(A)：');
disp('特征向量 V：');
disp(V);
disp('特征值 D：');
disp(D);

%% 5. 控制流结构
% for循环示例
disp('=== for 循环示例 ===');
for num = [1 2 3 4]
    disp(['num^2 = ', num2str(num^2)]); % 输出平方
end

% if-else结构
function f = fun1(x)
    if x > 1
        f = x^2 + 1;
    else
        f = 2 * x;
    end
end

% 多分支结构
function f = fun2(x)
    if x > 1
        f = x^2 + 1;
    elseif x <= 0
        f = x^3;
    else
        f = 2 * x;
    end
end

%% 运行测试
disp('=== 函数 fun1 测试 ===');
disp(fun1(2));
disp(fun1(-1));
disp('=== 函数 fun2 测试 ===');
disp(fun2(2));
disp(fun2(0.5));
disp(fun2(-1));