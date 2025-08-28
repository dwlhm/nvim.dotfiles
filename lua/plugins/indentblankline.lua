return {
  "lukas-reineke/indent-blankline.nvim",
  main = "ibl",
  opts = {
    -- Semua opsi terkait tampilan garis indentasi ada di sini
    indent = {
      -- char = "▏",
      -- Jika Anda menggunakan highlight list, pindahkan juga ke sini
      -- char_highlight_list = { "IndentBlanklineIndent1" },
    },
    -- Opsi 'konteks' sekarang bernama 'scope'
    scope = {
      enabled = true,
      show_start = true,
      show_end = false, -- Biasanya 'end' tidak terlalu dibutuhkan
    },
  },
}
