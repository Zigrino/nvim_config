
-- Map leader to space
vim.g.mapleader = ' '
vim.cmd 'colorscheme gruvbox-material'
--vim.cmd 'nnoremap <silent> <leader> :WhichKey '<Space>'<CR>'

local lsp_installer = require("nvim-lsp-installer")

lsp_installer.on_server_ready(function(server)
    local opts = {}

    -- (optional) Customize the options passed to the server
    -- if server.name == "tsserver" then
    --     opts.root_dir = function() ... end
    -- end

    -- This setup() function is exactly the same as lspconfig's setup function (:help lspconfig-quickstart)
    server:setup(opts)
    vim.cmd [[ do User LspAttachBuffers ]]
end)







local fn = vim.fn
local execute = vim.api.nvim_command

--vim.cmd 'let g:deoplete#enable_at_startup = 1'

--lsp
--require("lspconfig").pylsp.setup{}
--vim.cmd 'set completeopt-=preview'
--vim.cmd 'autocmd Filetype python setlocal omnifunc=v:lua.vim.lsp.omnifunc'

require'lspconfig'.pyright.setup{}




--vim.cmd 'let g:jedi#completions_enabled = 0'

--vim.cmd 'let g:jedi#use_splits_not_buffers = "right"'


require('lualine').setup()
options = {theme = 'gruvbox'}

require('compe-config')


tabline = {
  lualine_a = {},
  lualine_b = {'branch'},
  lualine_c = {'filename'},
  lualine_x = {},
  lualine_y = {},
  lualine_z = {}
}


--bufferline
require("bufferline").setup{}


-- Sensible defaults
require('settings')

-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua

-- Install plugins
require('plugins')

-- Key mappings
require('keymappings')

require('dbg.python')
-- Setup Lua language server using submodule
--require('lsp_lua')

-- Another option is to groups configuration in one folder
require('config')


-- OR you can invoke them individually here
--require('config.colorscheme')  -- color scheme
--require('config.completion')   -- completion
--require('config.fugitive')     -- fugitive


