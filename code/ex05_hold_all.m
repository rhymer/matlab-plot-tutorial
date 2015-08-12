t = 0:0.01:1;
figure();
hold all;
for n = [0.1  0.5  1  2  10]
    plot(t,t.^n);
end
legend('0.1','0.5','1','2','10')
xlabel('x')
ylabel('x^n')