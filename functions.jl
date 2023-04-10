function v_T(time::Float64)
    c1 = f1(time)
    c2 = g1(time)
    c3 = h1(time)
    return ( normalize( [ c1; c2; c3 ] ) )
end

function v_B(time::Float64)
    v1 = [ f1(time); g1(time); h1(time) ]
    v2 = [ f2(time); g2(time); h2(time) ]
    return ( normalize( cross( v1, v2) ) )
end

function v_N(time::Float64)
    return normalize( cross( v_B(time), v_T(time) ) )
end

function draw_vector(vec::Array{}, i::Int64, molt::Float64,col::String)
    u = vec[1]
    v = vec[2]
    w = vec[3]
    plot!([x[i],x[i]+u*molt], [y[i],y[i]+v*molt], [z[i],z[i]+w*molt],linecolor=col,linewidth=2,legend=false)
end

function draw_trihedron(time::Float64, i::Int64, molt)
    draw_vector(v_T(time), i, molt,"green")
    draw_vector(v_N(time), i, molt,"orange")
    draw_vector(v_B(time), i, molt,"red")
end