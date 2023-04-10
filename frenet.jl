using Plots
using Dates
using LinearAlgebra
include("functions.jl")

# γ(t) = ( f(t), g(t), h(t) )
### Parameters for the curve
n = 200
t = range(0, 6pi, length=n)

# f(t) = cos(t)*cos(t)
# g(t) = cos(t)*sin(t)
# h(t) = sin(t)
f(t) = t*cos(t)
g(t) = t*sin(t)
h(t) = t

### Derivatives of f,g,h
# f1(t)=2*cos(t)*(-sin(t))
# f2(t)=2*sin(t)*sin(t)+2*cos(t)*(-cos(t))
# g1(t)=-sin(t)*sin(t)+cos(t)*cos(t)
# g2(t)=-2*sin(t)*cos(t)+2*cos(t)*(-sin(t))
# h1(t)=cos(t)
# h2(t)=-sin(t)
f1(t)=cos(t)-t*sin(t)
f2(t)=-2sin(t)-t*cos(t)
g1(t)=sin(t)+t*cos(t)
g2(t)=2cos(t)-t*sin(t)
h1(t)=1
h2(t)=0

x=f.(t)
y=g.(t)
z=h.(t)

### Graphical Parameters
# To set these, try with different numbers
molt = 3.0
limx=[minimum(x)-1,maximum(x)+1]
limy=[minimum(y)-1,maximum(y)+1]
limz=[minimum(z)-1,maximum(z)+2]
cam_height = 30

cam_angle = range(0,90,length=length(t))
anim=@animate for i in 1:length(t)
    if i%(n/10)==0
        print(Int64(100i/length(t)),"% -> ")
    end
    p = plot(x, y, z,legend=false,
        camera=(0,cam_height),
        aspect_ratio=:equal,
        xlims=limx,
        ylims=limy,
        zlims=limz)
    draw_trihedron(t[i], i, molt)
    # uncomment to oscillate the camera angle
    plot!(p, camera = (cam_angle[i], cam_height))
    # (values in degrees: (azimuth, altitude))

end
println("END!")
gif(anim)
name=replace(string(now()), r"\.|\:" => "_")
gif(anim,"$name.gif",fps=15)