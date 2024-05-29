return {
  "L3MON4D3/LuaSnip",
  build = (not LazyVim.is_win())
      and "echo 'NOTE: jsregexp is optional, so not a big deal if it fails to build'; make install_jsregexp"
    or nil,
  dependencies = {
    {
      "rafamadriz/friendly-snippets",
      config = function()
        require("luasnip.loaders.from_vscode").lazy_load()
      end,
    },
    {
      "nvim-cmp",
      dependencies = {
        "saadparwaiz1/cmp_luasnip",
      },
      opts = function(_, opts)
        opts.snippet = {
          expand = function(args)
            require("luasnip").lsp_expand(args.body)
          end,
        }
        table.insert(opts.sources, { name = "luasnip" })
      end,
    },
  },
  opts = {
    history = true,
    delete_check_events = "TextChanged",
  },
  config = function()
    -- load snippets from path/of/your/nvim/config/my-cool-snippets
    -- require("luasnip.loaders.from_lua").lazy_load({ paths = { "./lua/snippets/init.lua" } })
    require("lua.snippets.init")
  end,
  keys = {
    {
      "<A-n>",
      function()
        local ls = require("luasnip")
        if ls.expand_or_jumpable() then
          ls.expand_or_jump()
        end
      end,
      mode = { "i", "s" }, -- Insert and select mode
      desc = "Expand or jump to the next snippet",
    },
    {
      "<A-p>",
      function()
        local ls = require("luasnip")
        if ls.jumpable(-1) then
          ls.jump(-1)
        end
      end,
      mode = { "i", "s" },
      desc = "Jump backward through snippets",
    },
    {
      "<A-l>",
      function()
        local ls = require("luasnip")
        if ls.choice_active() then
          ls.change_choice(1)
        end
      end,
      mode = { "i", "s" },
      desc = "Cycle through snippet choices",
    },
    {
      "<leader>cs",
      "<cmd>source ~/.config/nvim/lua/snippets/init.lua<CR>",
      desc = "Source custom snippets",
      mode = { "n" },
    },
  },
}
