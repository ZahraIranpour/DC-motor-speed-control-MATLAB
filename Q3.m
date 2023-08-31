clear all,
clc,
clf

% Q3

s = tf('s');

J = 0.099;
b = 0.1;
K = 0.01;
R = 1;
L = 0.49;

G_CL = K/((R+s*L)*(J*s+b)+K);

%MAKAN HENDESI CLOSE LOOP
figure(1)
rlocus(G_CL)

%BODE CLOSE LOOP
figure(2)
bode(G_CL);

%NYQUIST CLOSE LOOP
figure(3)
nyquist(G_CL);




