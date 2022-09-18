using Recfast
using Test


@testset "Recfast.jl" begin
    
    @show fieldnames(Params)
    params = Params()
    sol = Evaluate_recombination(params, logzstart = 4., logzend = -5,dt = 1e-2, dtmin = 1e-30)
    
    x_He = sol.u[1,:]
    x_H = sol.u[2,:]
    T_m = sol.u[3,:]


end
