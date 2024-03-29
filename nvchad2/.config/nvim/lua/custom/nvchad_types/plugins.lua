---@meta

---@alias PluginName string

---Adopted from lazy.nvim README.md
---Check `:h lazy.nvim` for more information
---@class PluginConfig
---@field dir? string A directory pointing to a local plugin
---@field url? string A custom git url where the plugin is hosted
---@field name? string A custom name for the plugin used for the local plugin directory, and as the display name of the plugin
---@field dev? boolean If true, A local plugin directory will be used
---@field lazy? boolean If true, the plugin will only be loaded when necessary
---@field enabled? boolean|fun():boolean Specify if the plugin should be included in the spec
---@field cond? boolean|fun():boolean Specify condition for whether the plugin should be loaded (Useful for specifying plugins for VsCode/FireNvim) 
---@field dependencies string|LazyDependencyConfig[] List of plugin names or plugin specs that should be loaded when the plugin loads. If you only specify the name, make sure the plugin config is specified somewhere else
---@field opts? table|function:table Should be a table/returns a table of configuration option for a plugin. If this is set, `config` argument will be considered as `true`
---@field config? function|true If true, assume and execute `require(plugin_name).setup(opts)`, with opts that can be modified using the `opts` argument of the plugin config. If a function, then this will be executed appropriately
---@field build? string Executed when a plugin is installed or updated. If it's a string, it will be ran as a shell command. When prefixed with `:` it will be considered a Neovim command.
---@field branch? string Specify branch of the Git repo to install/track
---@field tag? string Specify tag of the Git repo to install/track
---@field commit? string Specify commit id for installation
---@field version? string A specific version to use from. Supports full [Semver](https://devhints.io/semver) ranges
---@field pin? boolean If true, this plugin will not be updated
---@field event? string|string[] This plugin will be loaded when the Vim Event(s) happens. For more information, see `:h events`, `:h diagnostic-events`, `:h lsp-events`
---@field cmd? string|string[] The plugin will be load when the Vim command(s) is triggered
---@field ft? string|string[] When opening/setting a file with filetype(s) in this specified list, the plugin will be loaded
---@field keys? string|string[] Specify some sequence of keybinds that will load this plugin
---@field module? false If specified, will not automatically load this Lua module when it's required by some other plugin(s)
---@field priority? number Only useful for **start** plugins to force loading order. Higher number means higher priority. Default priority is **50**

---@class NvPluginConfig : PluginConfig
---@field override_options? table|fun():table Table containing options that you want to override for a plugin inside NvChad. This has no effect for plugins not installed by default by NvChad (e.g. bufferline.nvim)
---@field rm_default_opts? boolean Whether to only use your custom plugin config or not. If true, override_options will not have any effect

---@class LazyPluginConfig: PluginConfig
---@field [1] string Short plugin url. Equivalent of `url` argument

---@alias LazyDependencyConfig string|LazyPluginConfig

---@alias NvPluginsTable {[PluginName]: NvPluginConfig|false} # If a `PluginName` is false, remove it from the plugin table (will not be passed to lazy.nvim)
