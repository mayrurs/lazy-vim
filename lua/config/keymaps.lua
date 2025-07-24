-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

-- ~/.config/nvim/lua/config/keymaps.lua
vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })

-- Keymaps for CodeCompanion
vim.keymap.set("n", "<leader>cc", "<cmd>CodeCompanionChat<CR>", { desc = "Open Code Companion Chat" })
vim.keymap.set("n", "<leader>ci", "<cmd>CodeCompanion<CR>", { desc = "Open Code Companion Inline" })
vim.keymap.set("n", "<leader>ca", "<cmd>CodeCompanionAction<CR>", { desc = "Open Code Companion Action" })
vim.keymap.set("n", "<leader>ct", "<cmd>CodeCompanionChat Toggle<CR>", { desc = "Toggle Code Compantion Chat" })
