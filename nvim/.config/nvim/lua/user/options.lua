local g = vim.g
local o = vim.o
local opt = vim.opt

-- Gutter
o.number = true
o.relativenumber = true

-- Indentation
o.expandtab = true  -- todo
o.tabstop = 4
o.shiftwidth = 4

-- Clipboard
o.clipboard = "unnamedplus"

-- Leader
g.mapleader = " "
g.maplocalleader = " "

