return {
  "cacharle/c_formatter_42.vim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap

    -- set leader f n to format c code to 42 norms
    keymap.set("n", "<leader>fn", ":CFormatter42<CR>", { desc = "Format C To 42 Norms" })
  end,
}
