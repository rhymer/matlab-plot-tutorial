t = 0:0.1:10;
x = t.^2.*exp(-t).*cos(5*t);
y = t.^2.*exp(-t);
z = -t.^2.*exp(-t);
figure;
plot(t,x,'.-',t,y,'--k',t,z,'--k');
