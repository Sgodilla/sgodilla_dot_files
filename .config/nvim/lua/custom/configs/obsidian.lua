local obsidian = require("obsidian")

obsidian.setup({
  dir = "~/Documents/yggdrasil",
  completion = {
    nvim_cmp = true, -- Enable nvim-cmp completion
  },
  daily_notes = {
    folder = "daily_notes",
  },
  templates = {
    subdir = "templates",
    date_format = "%Y-%m-%d",
    time_format = "%H:%M",
    daily = "daily_note_template.md",
    idea = "idea_note_template.md",
  },
  workspaces = {
    {
      name = "daemo",
      path = "~/Documents/yggdrasil/daemo",
      strict = true,
    },
    {
      name = "project_euler",
      path = "~/Documents/yggdrasil/project_euler",
      strict = true,
    },
    {
      name = "deadly_hips",
      path = "~/Documents/yggdrasil/deadly_hips",
      strict = true,
    },
    {
      name = "other",
      path = "~/Documents/yggdrasil/other",
      strict = true,
    },
  },
  mappings = {
    -- Overrides the 'gf' mapping to work on markdown/wiki links within your vault.
    ["gf"] = {
      action = function()
        return require("obsidian").util.gf_passthrough()
      end,
      opts = { noremap = false, expr = true, buffer = true },
    },
    -- Toggle check-boxes, changed to avoid conflict with NVChad
    ["<leader>cc"] = {
      action = function()
        return require("obsidian").util.toggle_checkbox()
      end,
      opts = { buffer = true },
    },
    -- Smart action depending on context, either follow link or toggle checkbox.
    ["<cr>"] = {
      action = function()
        return require("obsidian").util.smart_action()
      end,
      opts = { buffer = true, expr = true },
    }
  },
  attachments = {
    img_folder = "images",
  }
})

-- Key mappings
vim.api.nvim_set_keymap("n", "<leader>oo", ":ObsidianOpen<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>on", ":ObsidianNew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>od", ":ObsidianToday<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>ot", ":ObsidianTemplate<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>or", ":ObsidianRename<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>ol", ":ObsidianLink<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "<leader>ok", ":ObsidianLinkNew<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>of", ":ObsidianSearch<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>oi", ":ObsidianPasteImage<CR>", { noremap = true, silent = true })
vim.api.nvim_set_keymap("n", "<leader>op", ":ObsidianPasteImg<CR>", { noremap = true, silent = true })

vim.cmd([[
command! ObsidianTemplate lua require("obsidian").template({name="template_name"})
]])
--
-- Enable text wrapping and set wrap margin for markdown files
vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt.wrap = true
    vim.opt.linebreak = true
    vim.opt.textwidth = 80 -- Set text width to 80 characters
  end,
})

vim.o.conceallevel = 2
