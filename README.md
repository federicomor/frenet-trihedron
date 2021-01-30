# frenet-trihedron
Visual representation of the Frenet Trihedron for a parametric space curve.

[ Rappresentazione grafica del Triedro di Frenet per curve parametriche nello spazio. ]

## Usage
In the file frenet.jl set the variables:
1. n: number of points to plot
2. t: interval of definition of the curve

and the parametric equation for the curve itself:

3. f(t): first component of the curve
4. g(t): second component of the curve
5. h(t): third component of the curve

and finally

6. molt: the coefficient to determine the magnitude of the versors of the trihedron

![These ones](examples/instructions.png)


## Examples
γ(t) = ( tcos(t), tsin(t), t )
![Alt Text](examples/tcost_tsint_t.gif)

γ(t) = ( t, tsin(t), exp(-t^2) )
![Alt Text](examples/t_tsint_expt(t^2).gif)
