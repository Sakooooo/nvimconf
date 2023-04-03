require("presence").setup({
  -- options
  auto_update = true,
  neovim_image_text = "look at me im different",
  main_image = "neovim",
  client_id = "793271441293967371",
  log_level = nil,
  debounce_timeout = 10,
  enable_line_number = false,
  blacklist = {},
  file_assets = {},
  show_time = true,

  -- the text
  editing_text = "editing %s",
  file_explorer_text = "browsing %s",
  git_commit_text = "git push --force",
  plugin_manager_text = "plugin manager",
  reading_text = "reading %s",
  workspace_text = "folder: %s",
  line_number_text = "line %s out of %s",
})
