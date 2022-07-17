local M = {}
--
-- M.disabled = {
--    "<C-n>",
-- }

M.truzen = {
   n = {
      ["<leader>ta"] = { "<cmd> TZAtaraxis <CR>", "   truzen ataraxis" },
      ["<leader>tm"] = { "<cmd> TZMinimalist <CR>", "   truzen minimal" },
      ["<leader>tf"] = { "<cmd> TZFocus <CR>", "   truzen focus" },
   },
}

M.treesitter = {
   n = {
      ["<leader>cu"] = { "<cmd> TSCaptureUnderCursor <CR>", "  find media" },
   },
}

M.shade = {
   n = {
      ["<leader>s"] = {
         function()
            require("shade").toggle()
         end,

         "   toggle shade.nvim",
      },
   },
}

M.telescope = {
   n = {
      -- find
      ["<C-p>"] = {
         "<cmd> Telescope find_files find_command=rg,--ignore,--hidden,--files prompt_prefix= <CR>",
         "  find files",
      },
      ["<leader>fa"] = { "<cmd> Telescope find_files follow=true no_ignore=true hidden=true <CR>", "  find all" },
      ["<leader>g"] = { "<cmd> Telescope live_grep <CR>", "   live grep" },
      ["<C-b>"] = { "<cmd> Telescope buffers <CR>", "  find buffers" },
      ["<leader>fh"] = { "<cmd> Telescope help_tags <CR>", "  help page" },
      ["<leader>fo"] = { "<cmd> Telescope oldfiles <CR>", "   find oldfiles" },
      ["<leader>tk"] = { "<cmd> Telescope keymaps <CR>", "   show keys" },

      -- git
      ["<leader>cm"] = { "<cmd> Telescope git_commits <CR>", "   git commits" },
      ["<leader>gt"] = { "<cmd> Telescope git_status <CR>", "  git status" },

      -- pick a hidden term
      ["<leader>pt"] = { "<cmd> Telescope terms <CR>", "   pick hidden term" },

      -- theme switcher
      ["<leader>th"] = { "<cmd> Telescope themes <CR>", "   nvchad themes" },
   },
}

M.lspconfig = {
   -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions

   n = {
      ["<C-j>"] = {
         function()
            vim.lsp.buf.definition()
         end,
         "   lsp definition",
      },
   },
}

M.general = {
   n = {
      ["q"] = { "<cmd> q <CR>", "quit" },
      ["H"] = { "^", "beginning" },
      ["L"] = { "$", "ending" },
      ["<leader>k"] = { "<Plug>MarkSet", "mark" },
      ["<leader>a"] = { "<cmd> Rg <C-R><C-W><cr>", "rg" },
      [";a"] = { "<cmd> NvimTreeToggle <CR>", "   toggle nvimtree" },
      [";e"] = { "<cmd> NvimTreeFocus <CR>", "   focus nvimtree" },
      ["<leader>tb"] = { "<cmd> TagbarToggle <CR>", "toggle tagbar" },
   },
   i = {
      ["jj"] = { "<ESC>", "esc" },
      ["jk"] = { "<ESC> <cmd> w <CR>", "esc save" },
      ["<C-j>"] = { "<Down>", " move down" },
      ["<C-k>"] = { "<Up>", " move up" },
   },
   v = {
      ["H"] = { "^", "beginning" },
      ["L"] = { "$", "ending" },
   },
   t = {
      ["H"] = { "^", "beginning" },
      ["L"] = { "$", "ending" },
   },
}

local mapx = require "mapx"
mapx.map("H", "^")
mapx.map("L", "$")

return M
