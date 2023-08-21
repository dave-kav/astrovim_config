return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function()
  --     require("lsp_signature").setup()
  --   end,
  -- },
  {
    "folke/noice.nvim",
    event = "VeryLazy",
    opts = {
      lsp = {
        override = {
          ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
          ["vim.lsp.util.stylize_markdown"] = true,
          ["cmp.entry.get_documentation"] = true,
        },
        hover = {
          enabled = true,
        },
        signature = {
          enabled = false,
        }
      },
      presets = {
        bottom_search = false,
        command_palette = true,
        long_message_to_split = true,
        inc_rename = true,
        lsp_doc_border = true
      },
      views = {
        cmdline_popup = {
          position = {
            row = 40,
            col = "50%",
          },
          size = {
            width = 70,
            height = "auto",
          },
        },
      },
    },
  },
  {
    'charludo/projectmgr.nvim',
    lazy = false, -- important!
  },
  {
    'apzelos/blamer.nvim',
    lazy = false, -- important!
  }
}
