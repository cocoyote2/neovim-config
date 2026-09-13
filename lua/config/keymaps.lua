-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>rp", function()
  vim.cmd("write")
  vim.cmd("split | terminal python " .. vim.fn.shellescape(vim.fn.expand("%")))
end, { desc = "Lancer le fichier Python" })

vim.keymap.set("n", "<leader>tt", function()
  Snacks.terminal.toggle(nil, { win = { height = 0.3 } })
end, { desc = "Terminal en bas" })
