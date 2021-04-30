using Dynstack
using Documenter

DocMeta.setdocmeta!(Dynstack, :DocTestSetup, :(using Dynstack); recursive=true)

makedocs(;
    modules=[Dynstack],
    authors="Jean-Francois Baffier",
    repo="https://github.com/JuliaConstraints/Dynstack.jl/blob/{commit}{path}#{line}",
    sitename="Dynstack.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaConstraints.github.io/Dynstack.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaConstraints/Dynstack.jl",
    devbranch="main",
)
