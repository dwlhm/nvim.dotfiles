-- ~/.config/nvim/lua/user/options.lua

-- Mengatur leader key ke spasi (harus sebelum plugin dimuat)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Pengaturan Tab dan Spasi
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.expandtab = true

-- Pengaturan Nomor Baris
vim.opt.number = true
vim.opt.relativenumber = true

-- Pengaturan lain yang direkomendasikan
vim.opt.termguicolors = true -- Aktifkan warna 24-bit
vim.opt.wrap = false         -- Nonaktifkan word wrap
vim.opt.scrolloff = 8        -- Jaga 8 baris jarak saat scroll

-- Mengatur agar Neovim menggunakan clipboard sistem secara otomatis
vim.opt.clipboard = 'unnamedplus'
