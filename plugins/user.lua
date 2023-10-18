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
          enabled = false,
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
            row = 30,
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
  },
  {
    'lukas-reineke/indent-blankline.nvim', lazy = false
  },
  {
    "danielfalk/smart-open.nvim",
    branch = "0.2.x",
    config = function()
      require("telescope").load_extension("smart_open")
    end,
    dependencies = {
      "kkharji/sqlite.lua",
      -- Only required if using match_algorithm fzf
      { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
      -- Optional.  If installed, native fzy will be used when match_algorithm is fzy
      { "nvim-telescope/telescope-fzy-native.nvim" },
    },
  },
  { 'echasnovski/mini.map', version = false, lazy = true },
  {
    'EthanJWright/vs-tasks.nvim',
    dependencies = {
      'nvim-lua/popup.nvim',
      'nvim-lua/plenary.nvim',
      'nvim-telescope/telescope.nvim'
    }
  },
  {
    'vim-test/vim-test',
    lazy = false,
  },
  {
    "mickael-menu/zk-nvim",
    config = function()
      require("zk").setup({
        picker = "telescope",
        lsp = {
          config = {
            cmd = { "zk", "lsp" },
            filetypes = { "markdown" },
            root_dir = require("lspconfig").util.root_pattern(".zk"),
          },
        }
      })
    end
  },
  {
    'nvim-pack/nvim-spectre',
    lazy = false,
    dependencies = {
      'nvim-lua/plenary.nvim',
    }
  },
  {
    "SmiteshP/nvim-navbuddy",
    dependencies = {
        "neovim/nvim-lspconfig",
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
        "numToStr/Comment.nvim",        -- Optional
        "nvim-telescope/telescope.nvim" -- Optional
    }
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "SmiteshP/nvim-navbuddy",
            dependencies = {
                "SmiteshP/nvim-navic",
                "MunifTanjim/nui.nvim"
            },
            opts = { lsp = { auto_attach = true } }
        }
    },
  },
  {
    "ggandor/leap.nvim",
    lazy = false,
  },
  {
    'petertriho/nvim-scrollbar',
    lazy = false,
    config = function()
      require('scrollbar').setup()
    end
  },
  {
   'akinsho/bufferline.nvim',
    dependencies = 'nvim-tree/nvim-web-devicons',
    config = function()
      require("bufferline").setup()
    end
  },
  {
    'nguyenvukhang/nvim-toggler',
    lazy = false,
    config = function()
      require('nvim-toggler').setup()
    end
  }
}
