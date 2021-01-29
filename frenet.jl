using GRUtils
using CalculusWithJulia
include("functions.jl")
using Dates

n=200
t=range(0, 6pi, length=n)

#=
γ(t) = ( f(t), g(t), h(t) )
=#
f(t) = t
g(t) = t*sin(t)
h(t) = e^(-t^2)

x=f.(t)
y=g.(t)
z=h.(t)

function set_lims(v::Array{Float64})
    inf, sup = extrema(v)
    return (inf-1, sup+1)
end

xl = set_lims(x)
yl = set_lims(y)
zl = set_lims(z)
fig = Figure()
plot3(x,y,z, "-.r",
    xlim=xl, ylim=yl, zlim=zl )

######### Versori di Frenet #########

f1=diff(f)
g1=diff(g)
h1=diff(h)
f2=diff(f1)
g2=diff(g1)
h2=diff(h1)

######### Grafici #########

# sleep(0.5)
fig = Figure()
# plot3(x,z,y, "-.r",
#     xlim=extrema(x), ylim=extrema(y),zlim=extrema(z) )

# hold(true)
# zoom(20)
# tilt(-20)
# GRUtils.rotate(-20)
# viewpoint(30,60)

#########################

figures = Figure[]
for j in 1:n
    fig = Figure()
    plot3(x,y,z, "-.r",
        xlim=xl, ylim=yl, zlim=zl )
    hold(true)
    draw_triedro(t[j], j)
    viewpoint(30,60)
    p=draw(gcf())
    push!(figures, plot3( x,y,z, "-.r",
        xlim=xl, ylim=yl, zlim=zl ))
end
videofile(figures, "frenet_out_$(replace(
        string(now()), r"\.|\:" => "_")).mp4")

###########################
