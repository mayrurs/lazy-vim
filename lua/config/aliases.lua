vim.api.nvim_create_user_command("CC", function()
  vim.cmd("CodeCompanionChat")
end, {})
