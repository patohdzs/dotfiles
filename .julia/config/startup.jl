install_instructions = []

try
    using Revise
catch e
    push!(install_instructions, "Pkg.add(\"Revise\")")
end

try
    import JuliaFormatter
catch e
    push!(install_instructions, "Pkg.add(\"JuliaFormatter\")")
end

try
    import LanguageServer
catch e
    push!(install_instructions, "Pkg.add(\"LanguageServer\")")
end

if length(install_instructions) > 0
    @info "Install missing startup packages:"
    @info join(["import Pkg", install_instructions...], "; ")
end
