-- Pindah window dengan Ctrl + h,j,k,l
vim.keymap.set('n', '<C-h>', '<C-w>h', { desc = 'Pindah ke window kiri' })
vim.keymap.set('n', '<C-j>', '<C-w>j', { desc = 'Pindah ke window bawah' })
vim.keymap.set('n', '<C-k>', '<C-w>k', { desc = 'Pindah ke window atas' })
vim.keymap.set('n', '<C-l>', '<C-w>l', { desc = 'Pindah ke window kanan' })

-- Keymap untuk split window dengan <leader> + s/v
vim.keymap.set('n', '<leader>s', ':sp<CR>', { desc = 'Buat split window horizontal' })
vim.keymap.set('n', '<leader>v', ':vsp<CR>', { desc = 'Buat split window vertikal' })
vim.keymap.set('n', '<leader>q', '<C-w>q', { desc = 'Tutup window saat ini' })

-- Git Blame
vim.keymap.set('n', '<leader>g', '<CMD>:Gitsigns blame<CR>', { desc = 'Blame' })
vim.keymap.set('n', '<leader>gb', '<CMD>:Gitsigns toggle_current_line_blame<CR>', { desc = 'Toggle current line blame' })

-- Keymap untuk menampilkan detail diagnostik di jendela pop-up
vim.keymap.set('n', 'gl', vim.diagnostic.open_float, { desc = "Open diagnostic float" })