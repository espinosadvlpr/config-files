local setup, picker = pcall(require, "icon-picker")
if not setup then
	return
end

picker.setup({
	disable_legacy_commands = true,
})

local opts = { noremap = true, silent = true }

vim.keymap.set("n", "<Leader><Leader>i", "<cmd>IconPickerNormal<cr>", opts)
vim.keymap.set("i", "<C-i>", "<cmd>IconPickerInsert<cr>", opts)
