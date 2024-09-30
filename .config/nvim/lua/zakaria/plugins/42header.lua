return {
  "pbondoer/vim-42header",
  -- event = { "BufReadPre", "BufNewFile" },
  config = function()
    local keymap = vim.keymap

    -- set leader h n to add norm header
    keymap.set("n", "<leader>hn", ":Stdheader<CR>", { desc = "Add 42 Header" })
  end,
}
