# Wakame

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://PyDataBlog.github.io/Wakame.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://PyDataBlog.github.io/Wakame.jl/dev)
[![Build Status](https://github.com/PyDataBlog/Wakame.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/PyDataBlog/Wakame.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/PyDataBlog/Wakame.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/PyDataBlog/Wakame.jl)
[![Code Style: Blue](https://img.shields.io/badge/code%20style-blue-4495d1.svg)](https://github.com/invenia/BlueStyle)
[![ColPrac: Contributor's Guide on Collaborative Practices for Community Packages](https://img.shields.io/badge/ColPrac-Contributor's%20Guide-blueviolet)](https://github.com/SciML/ColPrac)

Julia bindings for Japanese morphological analyzer, [MeCab](https://taku910.github.io/mecab/)

## Features

## Installation

You can grab the latest stable version of this package from Julia registries by simply running;

*NB:* Don't forget to invoke Julia's package manager with `]`

```julia
pkg> add Wakame
```

The few (and selected) brave ones can simply grab the current experimental features by simply adding the master branch to your development environment after invoking the package manager with `]`:

```julia
pkg> add Wakame#main
```

You are good to go with bleeding edge features and breakages!

To revert to a stable version, you can simply run:

```julia
pkg> free Wakame
```
