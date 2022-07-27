local utils = require("user.utils")

local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)

vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Modes

--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- Normal --

-- Better window navigation

local os_name, _ = utils.get_os_name()

if os_name == "Mac" then
  keymap("n", "˙", "<C-w>h", opts)
  keymap("n", "∆", "<C-w>j", opts)
  keymap("n", "˚", "<C-w>k", opts)
  keymap("n", "¬", "<C-w>l", opts)
elseif os_name == "Linux" then
  keymap("n", "<A-h>", "<C-w>h", opts)
  keymap("n", "<A-j>", "<C-w>j", opts)
  keymap("n", "<A-k>", "<C-w>k", opts)
  keymap("n", "<A-l>", "<C-w>l", opts)
end

-- Resize with arrows
keymap("n", "<C-Up>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Down>", ":resize +2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<CR>", opts)
keymap("n", "<S-h>", ":bprevious<CR>", opts)

-- Visual --

-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- BUFFERS --

-- List buffers
keymap("n", "<leader>b", "<cmd>lua require('telescope.builtin').buffers(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)


-- PLUGINS --

-- Alpha
keymap("n", "<leader>a", "<cmd>Alpha<cr>", opts)
keymap("n", "<leader>e", "<cmd>Explore<cr>", opts)

-- Telescope
keymap("n", "<leader>f", "<cmd>lua require('telescope.builtin').find_files(require('telescope.themes').get_dropdown{previewer = false})<cr>", opts)
keymap("n", "<leader>F", "<cmd>Telescope live_grep theme=ivy<cr>", opts)
keymap("n", "<leader>P", "<cmd>lua require('telescope').extensions.projects.projects()<cr>", opts)

-- Packer
keymap("n", "<leader>pc", "<cmd>PackerCompile<cr>", opts)
keymap("n", "<leader>pi", "<cmd>PackerInstall<cr>", opts)
keymap("n", "<leader>ps", "<cmd>PackerSync<cr>", opts)
keymap("n", "<leader>pS", "<cmd>PackerStatus<cr>", opts)
keymap("n", "<leader>pu", "<cmd>PackerUpdate<cr>", opts)

-- Git Signs
keymap("n", "<leader>gp", "<cmd>lua require 'gitsigns'.preview_hunk()<cr>", opts)
keymap("n", "<leader>gr", "<cmd>lua require 'gitsigns'.reset_hunk()<cr>", opts)
keymap("n", "<leader>gR", "<cmd>lua require 'gitsigns'.reset_buffer()<cr>", opts)
keymap("n", "<leader>gs", "<cmd>lua require 'gitsigns'.stage_hunk()<cr>", opts)
keymap("n", "<leader>gu", "<cmd>lua require 'gitsigns'.undo_stage_hunk()<cr>", opts)
keymap("n", "<leader>go", "<cmd>Telescope git_status<cr>", opts)
keymap("n", "<leader>gb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>gc", "<cmd>Telescope git_commits<cr>", opts)
keymap("n", "<leader>gd", "<cmd>Gitsigns diffthis HEAD<cr>", opts)

-- LSP
keymap("n", "<leader>la", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)
keymap("n", "<leader>ld", "<cmd>Telescope lsp_document_diagnostics<cr>", opts)
keymap("n", "<leader>lw", "<cmd>Telescope lsp_workspace_diagnostics<cr>", opts)
keymap("n", "<leader>lf", "<cmd>lua vim.lsp.buf.formatting()<cr>", opts)
keymap("n", "<leader>li", "<cmd>LspInfo<cr>", opts)
keymap("n", "<leader>lI", "<cmd>LspInstallInfo<cr>", opts)
keymap("n", "<leader>lj", "<cmd>lua vim.lsp.diagnostic.goto_next()<CR>", opts)
keymap("n", "<leader>lk", "<cmd>lua vim.lsp.diagnostic.goto_prev()<cr>", opts)
keymap("n", "<leader>ll", "<cmd>lua vim.lsp.codelens.run()<cr>", opts)
keymap("n", "<leader>lq", "<cmd>lua vim.lsp.diagnostic.set_loclist()<cr>", opts)
keymap("n", "<leader>lr", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
keymap("n", "<leader>ls", "<cmd>Telescope lsp_document_symbols<cr>", opts)
keymap("n", "<leader>lS", "<cmd>Telescope lsp_dynamic_workspace_symbols<cr>", opts)

-- Search
keymap("n", "<leader>sb", "<cmd>Telescope git_branches<cr>", opts)
keymap("n", "<leader>sc", "<cmd>Telescope colorscheme<cr>", opts)
keymap("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", opts)
keymap("n", "<leader>sM", "<cmd>Telescope man_pages<cr>", opts)
keymap("n", "<leader>sr", "<cmd>Telescope oldfiles<cr>", opts)
keymap("n", "<leader>sR", "<cmd>Telescope registers<cr>", opts)
keymap("n", "<leader>sk", "<cmd>Telescope keymaps<cr>", opts)
keymap("n", "<leader>sC", "<cmd>Telescope commands<cr>", opts)

-- Terminal
keymap("n", "<leader>t", "<cmd>ToggleTerm direction=float<cr>", opts)


-- Terminal --
-- Better terminal navigation
-- keymap("t", "<C-h>", "<C-\\><C-N><C-w>h", term_opts)
-- keymap("t", "<C-j>", "<C-\\><C-N><C-w>j", term_opts)
-- keymap("t", "<C-k>", "<C-\\><C-N><C-w>k", term_opts)
-- keymap("t", "<C-l>", "<C-\\><C-N><C-w>l", term_opts)

