return {
  'rmagatti/auto-session',
  config = function()
    require("auto-session").setup {
      log_level = "error",
      auto_restore_enabled = false, 
      auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/Github"},
    }

    local keymap = vim.keymap

    keymap.set("n", "<leader>wc", "<cmd>SessionSave<CR>", { desc = "Create of Save session" })
    keymap.set("n", "<leader>wr", "<cmd>SessionRestore<CR>", { desc = "Restore last saved session" })
  end
}
