clear all,
clc,
clf

% Q2

s = tf('s');

J = 0.099;
b = 0.1;
K = 0.01;
R = 1;
L = 0.49;

G_OL = K/((R+s*L)*(J*s+b));

%PASOKH PELE OPEN LOOP
step(G_OL)
