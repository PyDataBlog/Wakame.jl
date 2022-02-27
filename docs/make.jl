using Wakame
using Documenter

DocMeta.setdocmeta!(Wakame, :DocTestSetup, :(using Wakame); recursive=true)

makedocs(;
    modules=[Wakame],
    authors="Bernard Brenyah",
    repo="https://github.com/PyDataBlog/Wakame.jl/blob/{commit}{path}#{line}",
    sitename="Wakame.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://PyDataBlog.github.io/Wakame.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/PyDataBlog/Wakame.jl",
    devbranch="main",
)
