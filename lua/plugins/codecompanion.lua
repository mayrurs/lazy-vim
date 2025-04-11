return {
  {
    "olimorris/codecompanion.nvim",
    lazy = false, -- Ensures the plugin loads at startup
    config = function()
      require("codecompanion").setup({
        strategies = {
          chat = {
            adapter = "openai",
          },
          inline = {
            adapter = "anthropic",
          },
          cmd = {
            adapter = "anthropic",
          },
        },
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
      })
    end,
    keys = {
      { "<leader>ci", ":CodeCompanion<CR>", desc = "CodeCompanion" },
      { "<leader>cc", ":CodeCompanionChat<CR>", desc = "CodeCompanion Chat" },
      { "<leader>ct", ":CodeCompanionToggle<CR>", desc = "CodeCompanion Chat" },
    },
  },
}
