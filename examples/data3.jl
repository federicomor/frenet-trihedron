### Parameters for the curve
n = 200
t = range(0, 4pi, length=n)

### Functions f,g,h
f(t) = cos(t)+sin(2t)
g(t) = sin(t)+cos(3t)
h(t) = sin(t)*cos(t)

### Derivatives of f,g,h
f1(t) = -sin(t)+2*cos(2t)
f2(t) = -cos(t)-4*sin(2t)
g1(t) = cos(t)-3*sin(3t)
g2(t) = -sin(t)-9*cos(3t)
h1(t) = cos(t)^2-sin(t)^2
h2(t) = 2*cos(t)*(-sin(t)) - 2*sin(t)*cos(t)
