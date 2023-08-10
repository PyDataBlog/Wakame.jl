# Wakame

Documentation for [Wakame](https://github.com/PyDataBlog/Wakame.jl).


## Features

Wakame is a powerful and versatile library that can be used to segment a wide variety of Japanese text corpora. It is also highly efficient, making it ideal for large-scale text processing tasks.

Here are some of the key features of Wakame:

- Port of MeCab: Wakame is a port of the popular Japanese text segmentation library, MeCab. This gives Wakame access to MeCab's vast vocabulary and morphological analysis capabilities.
- Interface with C++: Wakame is written in Julia, but it interfaces directly with C++ code. This allows Wakame to take advantage of the speed and efficiency of C++ while still providing the flexibility and expressiveness of Julia.
- Support for a variety of corpora: Wakame supports a variety of Japanese text corpora, including news articles, social media posts, and academic papers.
- High performance: Wakame is highly efficient, making it ideal for large-scale text processing tasks.


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