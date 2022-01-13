using Plots
using Dates
using LinearAlgebra
include("functions.jl")

n = 200
t = range(0, 6pi, length=n)
# γ(t) = ( f(t), g(t), h(t) )
f(t) = t*cos(t)
g(t) = t*sin(t)
h(t) = t
molt = 2.0
# Derivatives of f,g,h
f1(t)=cos(t)-t*sin(t)
f2(t)=-2sin(t)-t*cos(t)
g1(t)=sin(t)+t*cos(t)
g2(t)=2cos(t)-t*sin(t)
h1(t)=1
h2(t)=0

x=f.(t)
y=g.(t)
z=h.(t)
anim=@animate for i in 1:length(t)
    if i%(n/10)==0
        print(Int64(100i/length(t)),"% -> ")
    end
    p = plot(x, y, z,legend=false, aspect_ratio=:equal)
    draw_trihedron(t[i], i, molt)
    # uncomment to oscillate the camera angle (values in degrees: (azimuth, altitude))
    plot!(p, camera = (i*45/length(t), 40))
end
gif(anim)
name=replace(string(now()), r"\.|\:" => "_")
gif(anim,"$name.gif",fps=15)