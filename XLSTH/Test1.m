% y(n) - y(n-1) + 0.9y(n-2) = x(n)
% ??nh ngh?a hàm truy?n H(z)
b = [1];           % T? s?
a = [1 -1 0.9];    % M?u s?

% Tính c?c và không
[z, p, k] = tf2zp(b, a); % z: không (zeros), p: c?c (poles)

% Tính ph?n h?i xung (Impulse Response)
N = 20; % S? m?u c?n tính
impulse_input = [1; zeros(N-1, 1)]; % Tín hi?u vào xung ??n v?
impulse_response = filter(b, a, impulse_input);

% Tính ph?n h?i b??c (Step Response)
step_input = ones(N, 1); % Tín hi?u vào b??c ??n v?
step_response = filter(b, a, step_input);

% V? ?? th?
figure;

% Ph?n h?i xung
subplot(2, 2, 1);
stem(0:N-1, impulse_response, 'filled');
title('Impulse Response');
xlabel('n'); ylabel('Amplitude');
grid on;

% Ph?n h?i b??c
subplot(2, 2, 2);
stem(0:N-1, step_response, 'filled');
title('Step Response');
xlabel('n'); ylabel('Amplitude');
grid on;

% C?c và không trên m?t ph?ng z
subplot(2, 2, [3, 4]);
zplane(b, a); % V? c?c và không
title('Poles and Zeros');
grid on;

% Hi?n th? giá tr? c?c và không
disp('Zeros:');
disp(z);
disp('Poles:');
disp(p);