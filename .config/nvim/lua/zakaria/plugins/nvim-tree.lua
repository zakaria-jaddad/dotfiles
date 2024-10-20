-- :help nvim-tree-commands
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local nvimtree = require("nvim-tree")

    -- disable netrw at the very start of your init.lua from documentation
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    nvimtree.setup({
      view = {
        width = 35,
        relativenumber = true,
      },
      -- change folder arrow icons
      renderer = {
        indent_markers = {
          enable = true,
        },
        icons = {
          glyphs = {
            folder = {
              arrow_closed = "", -- arrow when folder is closed
              arrow_open = "", -- arrow when folder is open
            },
          },
        },
      },
      -- disable window_picker for
      -- explorer to work well with
      -- window splits
      actions = {
        open_file = {
          window_picker = {
            enable = false,
          },
        },
      },
      filters = {
        custom = { ".DS_Store" },
      },
      git = {
        ignore = false,
      },
    })

    -- keymaps
    local keymap = vim.keymap

    -- This makes NvimTree Slow AF
    -- keymap.set("n", "<leader>eef", "<cmd>NvimTreeFindFile<CR>", { desc = "Find current file in the file explorer" })
    -- keymap.set(
    --   "n",
    --   "<leader>ee",
    --   "<cmd>NvimTreeToggle<CR>",
    --   { desc = "Open or close the tree. Takes an optional path argument" }
    -- )
    keymap.set("n", "<leader>e", "<cmd>NvimTreeFindFileToggle<CR>", { desc = "Open file explorer with current file" })
    -- keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>", { desc = "Collapse file explorer" })
    -- keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>", { desc = "Refresh file explorer" })
  end,
}
