### Parameters for the curve
n = 200
t = range(0, 6pi, length=n)

### Functions f,g,h
f(t) = cos(t)*cos(t)
g(t) = cos(t)*sin(t)
h(t) = sin(t)

### Derivatives of f,g,h
f1(t) = 2*cos(t)*(-sin(t))
f2(t) = 2*sin(t)*sin(t)+2*cos(t)*(-cos(t))
g1(t) = -sin(t)*sin(t)+cos(t)*cos(t)
g2(t) = -2*sin(t)*cos(t)+2*cos(t)*(-sin(t))
h1(t) = cos(t)
h2(t) = -sin(t)