-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map

    -- navigate buffer tabs with `H` and `L`
    -- L = {
    --   function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
    --   desc = "Next buffer",
    -- },
    -- H = {
    --   function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
    --   desc = "Previous buffer",
    -- },

    -- mappings seen under group name "Buffer"
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>gf"] = {
      function()
        require("telescope.builtin").grep_string({ search = vim.fn.expand("<cword>") })
      end,
      desc = "Search word under cursor",
    },
    ["<leader>P"] = {
      function()
        require("projectmgr").open_window()
      end,
      desc = "Open Project Manager",
    },
    ["<leader>T"] = { name = "Launch" },
    ["<leader>Tl"] = {
      function()
        require("telescope").extensions.vstask.launch()
      end,
      desc = "Launch VS Code task",
    },
    ["<leader>Ta"] = {
      function()
        require("telescope").extensions.vstask.tasks()
      end,
      desc = "Launch NPM task",
    },
    ["<leader>Tm"] = {
      function()
        require("telescope").extensions.test.TestFile()
      end,
      desc = "Mocha Current File",
    },
    ["<leader><leader>"] = {
      function ()
        require("telescope").extensions.smart_open.smart_open()
      end,
      desc = "Smart Open",
    }
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
