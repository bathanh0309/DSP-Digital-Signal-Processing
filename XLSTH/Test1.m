
b = [1];          
a = [1 -1 0.9];   

[z, p, k] = tf2zp(b, a); 

N = 20;
impulse_input = [1; zeros(N-1, 1)]; 
impulse_response = filter(b, a, impulse_input);

step_input = ones(N, 1); 
step_response = filter(b, a, step_input);

figure;

subplot(2, 2, 1);
stem(0:N-1, impulse_response, 'filled');
title('Impulse Response');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(2, 2, 2);
stem(0:N-1, step_response, 'filled');
title('Step Response');
xlabel('n'); ylabel('Amplitude');
grid on;

subplot(2, 2, [3, 4]);
zplane(b, a); % V? c?c và không
title('Poles and Zeros');
grid on;

disp('Zeros:');
disp(z);
disp('Poles:');
disp(p);
