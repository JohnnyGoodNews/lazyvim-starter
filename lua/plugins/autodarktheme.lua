if true then
  return {}
end

return {
  "f-person/auto-dark-mode.nvim",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
    set_dark_mode = function()
      -- vim.api.nvim_set_option_value("background", "dark", {})
      require("github-theme").load({ theme = "github_dark_default" })
    end,
    set_light_mode = function()
      -- vim.api.nvim_set_option_value("background", "light", {})
      require("github-theme").load({ theme = "github_light_default" })
    end,
    update_interval = 3000,
    fallback = "dark",
  },
}
