-- +++++++++++++++++++++++++++++
-- ++ Disable Unused Provider ++
-- +++++++++++++++++++++++++++++

vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
vim.g.loaded_node_provider = 0

-- +++++++++++++++++++++++++++
-- ++ Initialize Everything ++
-- +++++++++++++++++++++++++++

require("core.options")
require("core.keymaps")
require("core.plugins")
