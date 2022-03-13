module Wakame


using Libdl
import Base: parse


include("mecab.jl")



export Mecab, MecabNode, sparse_tostr, nbest_sparse_tostr, mecab_sparse_tonode,
    nbest_init, nbest_next_tostr, parse_tonode, parse_surface, parse_surface2, parse_nbest










end
