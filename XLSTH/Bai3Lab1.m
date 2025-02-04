w = [0:1:500]*pi/500;
X = exp(j*w) ./ (exp(j*w)- 0.5*ones(1,501));
magX = abs(X); angX = angle(X);
realX = real(X); imagX = imag(X);

subplot(2,2,1); plot(w/pi,magX); grid; title('Magnitude Part');
xlabel('frequency in pi units'); ylabel('Magnitude');
subplot(2,2,3); plot(w/pi,angX); grid; title('Angle Part'); 
xlabel('frequency in pi units');ylabel('Radians');
subplot(2,2,2); plot(w/pi,realX); grid; title('Real Part'); 
xlabel('frequency in pi units');ylabel('Real');
subplot(2,2,4); plot(w/pi,imagX); grid; title('Imaginary Part'); 
xlabel('frequency in pi units');ylabel('Imaginary');

% c�u a: bi?n ??i z l�: z/(z-1/2)
syms n
f = 0.5^n;
ztrans(f)
 
ans = z/(z - 1/2)
 