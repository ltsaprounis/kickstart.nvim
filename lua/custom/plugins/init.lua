-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  {
    'danymat/neogen',
    dependencies = 'nvim-treesitter/nvim-treesitter',
    -- Uncomment next line if you want to follow only stable versions
    version = '*',
    config = function()
      require('neogen').setup {
        enabled = true,
        snippet_engine = 'luasnip',
        languages = {
          python = {
            template = {
              annotation_convention = 'numpydoc',
            },
          },
        },
      }
    end,
    -- snippet_engine = "luasnip",
    -- enabled = true,
    -- configure python to use numpydoc
  },

  -- Markdown Preview
  {
    'iamcco/markdown-preview.nvim',
    cmd = { 'MarkdownPreviewToggle', 'MarkdownPreview', 'MarkdownPreviewStop' },
    ft = { 'markdown' },
    build = function()
      vim.fn['mkdp#util#install']()
    end,
  },

  -- Neovim games.
  {
    'alec-gibson/nvim-tetris',
  },
}
