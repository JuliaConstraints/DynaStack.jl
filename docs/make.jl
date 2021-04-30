using DynaStack
using Documenter

DocMeta.setdocmeta!(DynaStack, :DocTestSetup, :(using DynaStack); recursive=true)

makedocs(;
    modules=[DynaStack],
    authors="Jean-Francois Baffier",
    repo="https://github.com/JuliaConstraints/DynaStack.jl/blob/{commit}{path}#{line}",
    sitename="DynaStack.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://JuliaConstraints.github.io/DynaStack.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/JuliaConstraints/DynaStack.jl",
    devbranch="main",
)
