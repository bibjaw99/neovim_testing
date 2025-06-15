return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
      signature = {
        enabled = false,
      },
      hover = {
        enabled = false,
      },
    },

    routes = {
      {
        filter = {
          any = {
            {
              event = { "notify", "msg_show" },
              find = "No information available",
            },
            {
              event = "msg_show",
              kind = "",
              find = "written",
            },
          },
        },
        opts = {
          skip = true,
        },
      },
    },

    presets = {
      bottom_search = false,
      command_palette = true,
      long_message_to_split = true,
      lsp_doc_border = true,
    },
  },
  keys = {
    {
      mode = "n",
      "<leader>nh",
      ":Noice history<cr>",
      desc = "History"
    },
    {
      mode = "n",
      "<leader>nl",
      ":Noice last<cr>",
      desc = "Last Msg"
    },
    {
      mode = "n",
      "<leader>na",
      ":Noice all<cr>",
      desc = "Noice All"
    },
    {
      mode = "n",
      "<leader>nd",
      ":Noice dismiss<cr>",
      desc = "Noice Dismiss"
    },
    {
      mode = "n",
      "<leader>np",
      ":Noice pick<cr>",
      desc = "Noice pick"
    },
  },

  config = function(_, opts)
    if vim.o.filetype == "lazy" then
      vim.cmd([[messages clear]])
    end
    require("noice").setup(opts)
  end,
}
