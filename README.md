# frenet-trihedron
Visual representation of the Frenet Trihedron for a parametric space curve.

[ Rappresentazione grafica del Triedro di Frenet per curve parametriche nello spazio. ]

The beautiful thing that on wikipedia is known as [Frenet and Serret formulas](https://en.wikipedia.org/wiki/Frenet%E2%80%93Serret_formulas).

## Usage
In the file frenet.jl set the variables:
1. n: number of points to plot
2. t: interval of definition of the curve

and the parametric equation for the curve itself:

3. f(t): first component of the curve
4. g(t): second component of the curve
5. h(t): third component of the curve
6. molt: the coefficient to determine the magnitude of the versors of the trihedron

```julia
n = 200
t = range(0, 6pi, length=n)
# γ(t) = ( f(t), g(t), h(t) )
f(t) = t
g(t) = t*sin(t)
h(t) = exp(-t^2)
molt = 5.0
```

## Examples
γ(t) = ( t\*cos(t), t\*sin(t), t )
![Alt Text](examples/tcost_tsint_t.gif)

γ(t) = ( t, t\*sin(t), exp(-t^2) )
![Alt Text](examples/t_tsint_exp(-t^2).gif)
