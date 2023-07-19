```@meta
CurrentModule = Wakame
```

# Wakame

Documentation for [Wakame](https://github.com/PyDataBlog/Wakame.jl).

```@index
```

```@autodocs
Modules = [Wakame]
```


## Installation

To install `Wakame` either do

```julia
using Pkg
Pkg.add("Wakame")
```

or switch to `Pkg` mode with `]` and issue

```julia
pkg> add Wakame
```

## Requirement

This package requires the following software to be installed:
- mecab
- dictionary for mecab (such as mecab-ipadic, mecab-naist-jdic, and others)


## Usage

```julia
using Wakame

# Create a mecab tagger
mecab = Mecab()

# You can give MeCab option like "-o wakati"
# mecab = Mecab("-o wakati")

# Parse text. It returns Array of MecabNode type
results = parse(mecab, "すももももももももものうち")

# Access each result. It returns Array of String
for result in results
  println(result.surface, ":", result.feature)
end

# Parse surface
results = parse_surface(mecab, "すももももももももものうち")

# Access each result. It returns Array of Array of MecabNode
for result in results
  println(result)
end

# Parse nbest result
nbest_results = parse_nbest(mecab, 3, "すももももももももものうち")
for nbest_result in nbest_results
  for result in nbest_result
    println(result.surface, ":", result.feature)
  end
  println()
end


# Read from file as well
write("test.txt", "すももももももももものうち")
results = mecab.parse_file("test.txt")

```

## Credits

Reboot of MeCab.jl created by Michiaki Ariga

Original [MeCab](https://taku910.github.io/mecab/) is created by Taku Kudo

### Contributors
- [r9y9](https://github.com/r9y9)
- [snthot](https://github.com/snthot)
- [tkelman](https://github.com/tkelman)


```@index
```

```@autodocs
Modules = [Wakame]
```