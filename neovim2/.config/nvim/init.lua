-- Neovim personal config file
--  ▄▄▄       ▄▄▄▄    █    ██  ██▒   █▓ ██▓ ███▄ ▄███▓
-- ▒████▄    ▓█████▄  ██  ▓██▒▓██░   █▒▓██▒▓██▒▀█▀ ██▒
-- ▒██  ▀█▄  ▒██▒ ▄██▓██  ▒██░ ▓██  █▒░▒██▒▓██    ▓██░
-- ░██▄▄▄▄██ ▒██░█▀  ▓▓█  ░██░  ▒██ █░░░██░▒██    ▒██
--  ▓█   ▓██▒░▓█  ▀█▓▒▒█████▓    ▒▀█░  ░██░▒██▒   ░██▒
--  ▒▒   ▓▒█░░▒▓███▀▒░▒▓▒ ▒ ▒    ░ ▐░  ░▓  ░ ▒░   ░  ░
--   ▒   ▒▒ ░▒░▒   ░ ░░▒░ ░ ░    ░ ░░   ▒ ░░  ░      ░
--   ░   ▒    ░    ░  ░░░ ░ ░      ░░   ▒ ░░      ░
--       ░  ░ ░         ░           ░   ░         ░
--                 ░               ░
-- 
-- Files to add additional variables needed to be loaded 
require('prevenv')
-- Plugins file
require("plugs")
-- Local Variables to add
require('prevvars')
-- Completion paths to be added
require('complet')
-- Custom keymapping file
require("mappings")
-- File settings added to make a better neovim experience
require('pluginconfs')
-- Telescope settings
require('telescopeconfs')
