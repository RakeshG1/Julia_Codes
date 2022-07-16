# using Pkg


# Pkg.add("Plots")
# Pkg.add("PyPlot")

using Plots 

data = rand(10)
f = Plots.plot(data)
@show f