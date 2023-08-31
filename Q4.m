clear all,
clc,
clf

% Q4

s = tf('s');

J = 0.099;
b = 0.1;
K = 0.01;
R = 1;
L = 0.49;

G_OL = K/((R+s*L)*(J*s+b));
% 
% figure(1)
% sisotool(G_OL)
% 
% figure(2)
% rlocus(G_OL)

k_G=990;
k_c=0.0225;
c=(s+0.76)/(s+0.76*0.0225);

figure(3)
step(feedback(c*G_OL*k_c*k_G,1))