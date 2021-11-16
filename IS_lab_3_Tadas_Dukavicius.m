clear

x = 0.1: 1/22: 1;
for i=1:length(x)
    d(i) = (1 + 0.6*sin(2*pi*x(i)/0.7) + 0.3*sin(2*pi*x(i)))/2;
end

c1 = 

c1 = 0.19;
c2 = 0.92;
r1 = 0.19;
r2 = 0.19;

w1 = randn(1);
w2 = randn(1);
b = randn(1);
n = 0.2;

for j=1:20
    for i=1:i
        F1 = gaussrb(x(i), c1, r1);
        F2 = gaussrb(x(i), c2, r2);

        y(i) = F1*w1 + F2*w2 + b;

        e = d(i) - y(i);

        if e ~= 0
            w1 = w1 + n*e*F1;
            w2 = w2 + n*e*F2;
            b = b + n*e;
        end
    end
end

plot(x, d, "x", x, y);