using Plots
using Dates
using LinearAlgebra
include("functions.jl")

# γ(t) = ( f(t), g(t), h(t) )
### write in a file like this all the data

# include("examples/data1.jl")
# include("examples/data2.jl")
include("examples/data3.jl")

x=f.(t)
y=g.(t)
z=h.(t)

### Graphical Parameters
# To set these, try with different numbers
molt = 1.0
limx=[minimum(x)-1,maximum(x)+1]
limy=[minimum(y)-1,maximum(y)+1]
limz=[minimum(z)-1,maximum(z)+2]

cam_angle = 60
cam_height = 40
# values in degrees: (azimuth, altitude)

anim=@animate for i in 1:length(t)
    if i%(n/10)==0
        print(Int64(100i/length(t)),"%\r")
    end
    p = plot(x, y, z,legend=false,
        # camera=(cam_angle,cam_height),
        aspect_ratio=:equal,
        xlims=limx,
        ylims=limy,
        zlims=limz
        )
    draw_trihedron(t[i], i, molt)
    plot!(p, camera = (cam_angle, cam_height))


end
println("END!")
gif(anim)
name=replace(string(now()), r"\.|\:" => "_")
gif(anim,"$name.gif",fps=15)