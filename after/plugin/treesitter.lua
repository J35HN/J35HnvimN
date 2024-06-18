-- Remember to use TSUpdate and TSInstall commands (especially for lua).
require'nvim-treesitter.configs'.setup {

  -- A list of parser names, or "all" (the five listed parsers should always be installed)
  ensure_installed = { "html", "css", "gitignore", "scss", "cpp", "cmake", "python", "javascript", "c", "lua", "vim", "vimdoc", "query" },

  -- Install parsers synchronously (only applied to `ensure_installed`)
  sync_install = false,

  -- Automatically install missing parsers when entering buffer
  -- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
  auto_install = true,

    highlight = {
    enable = true,

      additional_vim_regex_highlighting = false,
  },
}

if vim.loop.os_uname().sysname == "Windows_NT" then
	require('nvim-treesitter.install').compilers = { "clang" }
	-- https://stackoverflow.com/questions/74225678/why-neovim-plug-treesitter-dont-work-on-windows
end
