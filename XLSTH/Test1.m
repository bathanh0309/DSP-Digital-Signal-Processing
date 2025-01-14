% y(n) - y(n-1) + 0.9y(n-2) = x(n)
% ??nh ngh?a h�m truy?n H(z)
b = [1];           % T? s?
a = [1 -1 0.9];    % M?u s?

% T�nh c?c v� kh�ng
[z, p, k] = tf2zp(b, a); % z: kh�ng (zeros), p: c?c (poles)

% T�nh ph?n h?i xung (Impulse Response)
N = 20; % S? m?u c?n t�nh
impulse_input = [1; zeros(N-1, 1)]; % T�n hi?u v�o xung ??n v?
impulse_response = filter(b, a, impulse_input);

% T�nh ph?n h?i b??c (Step Response)
step_input = ones(N, 1); % T�n hi?u v�o b??c ??n v?
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

% C?c v� kh�ng tr�n m?t ph?ng z
subplot(2, 2, [3, 4]);
zplane(b, a); % V? c?c v� kh�ng
title('Poles and Zeros');
grid on;

% Hi?n th? gi� tr? c?c v� kh�ng
disp('Zeros:');
disp(z);
disp('Poles:');
disp(p);