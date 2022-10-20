using Test
using GIFTI
using GeometryBasics

@testset "Load example" begin
    result1 = GIFTI.load(GIFTI.assetpath("infl_left.gii"))
    @test true
    result2 = GIFTI.load(GIFTI.assetpath("infl_left.gii.gz"))
    @test result1 == result2
    @test length(coordinates(result1)) == 10242
end


