clear all,
clc,
clf

% Q5

s = tf('s');

J = 0.0099;
b = 0.1;
K = 0.01;
R = 1;
L = 0.49;

G_OL = K/((R+s*L)*(J*s+b));

k_G=990;
% figure(1)
% bode(k_G*G_OL);

c=(1+19.098*0.0595*s)/(1+19.098*s);
figure(2)
bode(k_G*G_OL*c);

figure(3)
step(feedback(c*G_OL*k_G,1))