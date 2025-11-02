return {
  {
    "olimorris/codecompanion.nvim",
    dependencies = {
      -- { "echasnovski/mini.pick", config = true },
      -- { "ibhagwan/fzf-lua", config = true },
    },
    opts = {
      adapters = {
        openai = function()
          return require("codecompanion.adapters").extend("openai", {
            env = {
              api_key = os.getenv("OPENAI_KEY"),
            },
          })
        end,
        anthropic = function()
          return require("codecompanion.adapters").extend("anthropic", {
            env = {
              api_key = os.getenv("ANTHROPIC_KEY"),
            },
          })
        end,
      },
      strategies = {
        chat = {
          adapter = "anthropic",
          roles = {
            user = "user",
          },
          keymaps = {
            send = {
              modes = {
                i = { "<C-CR>", "<C-s>" },
              },
            },
            completion = {
              modes = {
                i = "<C-x>",
              },
            },
          },
        },
        inline = { adapter = "anthropic" },
      },
      extensions = {
        mcphub = {
          callback = "mcphub.extensions.codecompanion",
          opts = {
            show_result_in_chat = true, -- Show mcp tool results in chat
            make_vars = true, -- Convert resources to #variables
            make_slash_commands = true, -- Add prompts as /slash commands
          },
        },
      },
    },
  },
}
