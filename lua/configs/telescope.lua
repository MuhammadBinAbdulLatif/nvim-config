local options = require("nvchad.configs.telescope")

options.defaults.file_ignore_patterns = {
  "^venv/",
  "^.venv/",
}

options.pickers.find_files = {
  hidden = true,
  no_ignore = false,
}

return options

