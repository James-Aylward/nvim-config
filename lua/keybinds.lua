vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Moving lines up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

vim.keymap.set("n", "<M-j>", "o<Esc>")
vim.keymap.set("n", "<M-k>", "O<Esc>")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Arduino stuff
local api  = vim.api
api.nvim_command('au BufRead,BufNewFile *.ino nnoremap <buffer> <leader>aa <cmd>call arduino#Attach()<CR>')
api.nvim_command('au BufRead,BufNewFile *.ino nnoremap <buffer> <leader>am <cmd>call arduino#Verify()<CR>')
api.nvim_command('au BufRead,BufNewFile *.ino nnoremap <buffer> <leader>au <cmd>call arduino#Upload()<CR>')
api.nvim_command('au BufRead,BufNewFile *.ino nnoremap <buffer> <leader>ad <cmd>call arduino#UploadAndSerial()<CR>')
api.nvim_command('au BufRead,BufNewFile *.ino nnoremap <buffer> <leader>ab <cmd>call arduino#ChooseBoard()<CR>')
api.nvim_command('au BufRead,BufNewFile *.ino nnoremap <buffer> <leader>ap <cmd>call arduino#ChooseProgrammer()<CR>')
