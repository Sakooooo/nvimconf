require("presence").setup({
  -- options
  auto_update = true,
  neovim_image_text = "carpal tunnel",
  main_image = "neovim",
  client_id = "793271441293967371",
  log_level = nil,
  debounce_timeout = 10,
  enable_line_number = false,
  blacklist = {},
  file_assets = {},
  show_time = true,

  -- the text
  editing_text = "Editing %s",
  file_explorer_text = "Browsing %s",
  git_commit_text = "git push --force time",
  plugin_manager_text = "bloatwareing neovim",
  reading_text = "Reading %s",
  workspace_text = "Folder: %s",
  line_number_text = "Line %s out of %s",
})
