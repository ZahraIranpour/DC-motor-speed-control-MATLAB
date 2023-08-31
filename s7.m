clear all
clc

J = 0.0099;
b = 0.1;
K = 0.01;
R = 1;
L = 0.49;
A = [-b/J   K/J
    -K/L   -R/L];
B = [0
    1/L];
C = [1   0];
D = 0;
sys = ss(A,B,C,D);

sysorder = order(sys)
sysrank = rank(ctrb(A,B))
   if sysorder==sysrank
   sprintf('controllable')
else
   sprintf('uncontrollable')
   end
   
p1 = -1 + 1.3644i;
p2 = -1 - 1.3644i;
Kc = place(A,B,[p1 p2])
A1=A-B*Kc;
syscl = ss(A1,B,C,D);
figure(1)
step(syscl)
figure(2)
kn=1.388;
sysc2=syscl*kn;
step(sysc2)
