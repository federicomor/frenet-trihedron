### Parameters for the curve
n = 200
t = range(0, 6pi, length=n)

### Functions f,g,h
f(t) = t*cos(t)
g(t) = t*sin(t)
h(t) = t

### Derivatives of f,g,h
f1(t) = cos(t)-t*sin(t)
f2(t) = -2sin(t)-t*cos(t)
g1(t) = sin(t)+t*cos(t)
g2(t) = 2cos(t)-t*sin(t)
h1(t) = 1
h2(t) = 0