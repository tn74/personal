-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

local time
local profile_info
local should_profile = false
if should_profile then
  local hrtime = vim.loop.hrtime
  profile_info = {}
  time = function(chunk, start)
    if start then
      profile_info[chunk] = hrtime()
    else
      profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
    end
  end
else
  time = function(chunk, start) end
end

local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/trishulnagenalli/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/trishulnagenalli/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/trishulnagenalli/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/trishulnagenalli/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/trishulnagenalli/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  ["ayu-vim"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/ayu-vim",
    url = "https://github.com/ayu-theme/ayu-vim"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["git-blame"] = {
    config = { "\27LJ\2\nF\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fenabled\2\nsetup\rgitblame\frequire\0" },
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/git-blame",
    url = "https://github.com/f-person/git-blame"
  },
  ["lualine.nvim"] = {
    config = { "\27LJ\2\n›\4\0\0\6\0\26\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0034\4\3\0005\5\6\0>\5\1\4=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\19\0005\4\18\0=\4\5\0034\4\3\0005\5\20\0>\5\1\4=\4\a\0035\4\21\0=\4\t\0035\4\22\0=\4\v\0035\4\23\0=\4\r\0035\4\24\0=\4\15\3=\3\25\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rprogress\1\4\0\0\rencoding\15fileformat\rfiletype\1\4\0\0\vbranch\tdiff\16diagnostics\1\2\2\0\rfilename\tpath\3\1\16file_status\2\1\0\0\1\2\0\0\tmode\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_b\1\2\2\0\rfilename\tpath\3\1\16file_status\2\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0" },
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  ["mason-lspconfig.nvim"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/mason-lspconfig.nvim",
    url = "https://github.com/williamboman/mason-lspconfig.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  nerdtree = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/nerdtree",
    url = "https://github.com/preservim/nerdtree"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0" },
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    config = { "\27LJ\2\nÎ\5\0\0\v\0)\0\\6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\t\0005\4\6\0009\5\3\0009\5\4\0059\5\5\5B\5\1\2=\5\a\0049\5\3\0009\5\4\0059\5\5\5B\5\1\2=\5\b\4=\4\4\0039\4\n\0009\4\v\0049\4\f\0045\6\18\0009\a\n\0009\a\r\a5\t\16\0009\n\14\0009\n\15\n=\n\17\tB\a\2\2=\a\19\0069\a\n\0009\a\20\a5\t\21\0009\n\14\0009\n\15\n=\n\17\tB\a\2\2=\a\22\0069\a\n\0009\a\23\a)\tüÿB\a\2\2=\a\24\0069\a\n\0009\a\23\a)\t\4\0B\a\2\2=\a\25\0069\a\n\0009\a\26\aB\a\1\2=\a\27\0069\a\n\0009\a\28\aB\a\1\2=\a\29\0069\a\n\0009\a\30\a5\t\31\0B\a\2\2=\a \6B\4\2\2=\4\n\0039\4\3\0009\4!\0044\6\3\0005\a\"\0>\a\1\0065\a#\0>\a\2\6B\4\2\2=\4!\3B\1\2\0019\1\2\0009\1$\1'\3%\0005\4&\0009\5\n\0009\5\v\0059\5$\5B\5\1\2=\5\n\0049\5\3\0009\5!\0054\a\3\0005\b'\0>\b\1\a5\b(\0>\b\2\aB\5\2\2=\5!\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\f<S-Tab>\1\0\0\21select_prev_item\n<Tab>\1\0\0\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\vinsert\vpreset\fmapping\1\0\0\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    config = { "\27LJ\2\nñ\2\0\0\t\0\23\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\1\2\0014\3\0\0B\1\2\0019\1\6\0009\1\2\0015\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0039\4\f\0009\4\r\4'\6\14\0'\a\15\0'\b\16\0B\4\4\2=\4\17\0035\4\21\0005\5\19\0005\6\18\0=\6\20\5=\5\6\4=\4\22\3B\1\2\1K\0\1\0\rsettings\1\0\0\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\rroot_dir\t.git\vgo.mod\fgo.work\17root_pattern\tutil\14filetypes\1\3\0\0\ago\ngomod\bcmd\1\0\0\1\3\0\0\ngopls\nserve\ngopls\vlua_ls\14lspconfig\20mason-lspconfig\nsetup\nmason\frequire\0" },
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    config = { "\27LJ\2\nä\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\a\0\0\6c\blua\bvim\ago\15typescript\vpython\nsetup\28nvim-treesitter.configs\frequire\0" },
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = false,
    needs_bufread = false,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ripgrep = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/ripgrep",
    url = "https://github.com/BurntSushi/ripgrep"
  },
  ["telescope-fzf-native.nvim"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/telescope-fzf-native.nvim",
    url = "https://github.com/nvim-telescope/telescope-fzf-native.nvim"
  },
  ["telescope-live-grep-args.nvim"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/telescope-live-grep-args.nvim",
    url = "https://github.com/nvim-telescope/telescope-live-grep-args.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nú\3\0\0\v\0\24\0-6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0005\6\20\0005\a\16\0009\b\15\0B\b\1\2=\b\17\a9\b\15\0005\n\18\0B\b\2\2=\b\19\a=\a\6\6=\6\b\5=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\23\1'\3\r\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\23\1'\3\21\0B\1\2\1K\0\1\0\19load_extension\15extensions\19live_grep_args\1\0\0\n<C-i>\1\0\1\fpostfix\14 --iglob \n<C-k>\1\0\0\17quote_prompt\1\0\1\17auto_quoting\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\2\n<C-s>\16file_vsplit\n<C-i>\15file_split\nsetup\14telescope%telescope-live-grep-args.actions\frequire\0" },
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["vim-fugitive"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-rhubarb"] = {
    loaded = true,
    path = "/Users/trishulnagenalli/.local/share/nvim/site/pack/packer/start/vim-rhubarb",
    url = "https://github.com/tpope/vim-rhubarb"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: lualine.nvim
time([[Config for lualine.nvim]], true)
try_loadstring("\27LJ\2\n›\4\0\0\6\0\26\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\16\0005\3\4\0005\4\3\0=\4\5\0034\4\3\0005\5\6\0>\5\1\4=\4\a\0035\4\b\0=\4\t\0035\4\n\0=\4\v\0035\4\f\0=\4\r\0035\4\14\0=\4\15\3=\3\17\0025\3\19\0005\4\18\0=\4\5\0034\4\3\0005\5\20\0>\5\1\4=\4\a\0035\4\21\0=\4\t\0035\4\22\0=\4\v\0035\4\23\0=\4\r\0035\4\24\0=\4\15\3=\3\25\2B\0\2\1K\0\1\0\22inactive_sections\1\2\0\0\rlocation\1\2\0\0\rprogress\1\4\0\0\rencoding\15fileformat\rfiletype\1\4\0\0\vbranch\tdiff\16diagnostics\1\2\2\0\rfilename\tpath\3\1\16file_status\2\1\0\0\1\2\0\0\tmode\rsections\1\0\0\14lualine_z\1\2\0\0\rlocation\14lualine_y\1\2\0\0\rprogress\14lualine_x\1\4\0\0\rencoding\15fileformat\rfiletype\14lualine_c\1\4\0\0\vbranch\tdiff\16diagnostics\14lualine_b\1\2\2\0\rfilename\tpath\3\1\16file_status\2\14lualine_a\1\0\0\1\2\0\0\tmode\nsetup\flualine\frequire\0", "config", "lualine.nvim")
time([[Config for lualine.nvim]], false)
-- Config for: nvim-autopairs
time([[Config for nvim-autopairs]], true)
try_loadstring("\27LJ\2\n@\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\19nvim-autopairs\frequire\0", "config", "nvim-autopairs")
time([[Config for nvim-autopairs]], false)
-- Config for: nvim-cmp
time([[Config for nvim-cmp]], true)
try_loadstring("\27LJ\2\nÎ\5\0\0\v\0)\0\\6\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\t\0005\4\6\0009\5\3\0009\5\4\0059\5\5\5B\5\1\2=\5\a\0049\5\3\0009\5\4\0059\5\5\5B\5\1\2=\5\b\4=\4\4\0039\4\n\0009\4\v\0049\4\f\0045\6\18\0009\a\n\0009\a\r\a5\t\16\0009\n\14\0009\n\15\n=\n\17\tB\a\2\2=\a\19\0069\a\n\0009\a\20\a5\t\21\0009\n\14\0009\n\15\n=\n\17\tB\a\2\2=\a\22\0069\a\n\0009\a\23\a)\tüÿB\a\2\2=\a\24\0069\a\n\0009\a\23\a)\t\4\0B\a\2\2=\a\25\0069\a\n\0009\a\26\aB\a\1\2=\a\27\0069\a\n\0009\a\28\aB\a\1\2=\a\29\0069\a\n\0009\a\30\a5\t\31\0B\a\2\2=\a \6B\4\2\2=\4\n\0039\4\3\0009\4!\0044\6\3\0005\a\"\0>\a\1\0065\a#\0>\a\2\6B\4\2\2=\4!\3B\1\2\0019\1\2\0009\1$\1'\3%\0005\4&\0009\5\n\0009\5\v\0059\5$\5B\5\1\2=\5\n\0049\5\3\0009\5!\0054\a\3\0005\b'\0>\b\1\a5\b(\0>\b\2\aB\5\2\2=\5!\4B\1\3\1K\0\1\0\1\0\1\tname\fcmdline\1\0\1\tname\tpath\1\0\0\6:\fcmdline\1\0\1\tname\vbuffer\1\0\1\tname\rnvim_lsp\fsources\t<CR>\1\0\1\vselect\2\fconfirm\n<C-e>\nabort\14<C-Space>\rcomplete\n<C-f>\n<C-b>\16scroll_docs\f<S-Tab>\1\0\0\21select_prev_item\n<Tab>\1\0\0\rbehavior\1\0\0\vSelect\19SelectBehavior\21select_next_item\vinsert\vpreset\fmapping\1\0\0\18documentation\15completion\1\0\0\rbordered\vwindow\vconfig\nsetup\bcmp\frequire\0", "config", "nvim-cmp")
time([[Config for nvim-cmp]], false)
-- Config for: nvim-lspconfig
time([[Config for nvim-lspconfig]], true)
try_loadstring("\27LJ\2\nñ\2\0\0\t\0\23\0'6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\4\0B\0\2\0029\1\5\0009\1\2\0014\3\0\0B\1\2\0019\1\6\0009\1\2\0015\3\b\0005\4\a\0=\4\t\0035\4\n\0=\4\v\0039\4\f\0009\4\r\4'\6\14\0'\a\15\0'\b\16\0B\4\4\2=\4\17\0035\4\21\0005\5\19\0005\6\18\0=\6\20\5=\5\6\4=\4\22\3B\1\2\1K\0\1\0\rsettings\1\0\0\ranalyses\1\0\1\16staticcheck\2\1\0\1\17unusedparams\2\rroot_dir\t.git\vgo.mod\fgo.work\17root_pattern\tutil\14filetypes\1\3\0\0\ago\ngomod\bcmd\1\0\0\1\3\0\0\ngopls\nserve\ngopls\vlua_ls\14lspconfig\20mason-lspconfig\nsetup\nmason\frequire\0", "config", "nvim-lspconfig")
time([[Config for nvim-lspconfig]], false)
-- Config for: nvim-treesitter
time([[Config for nvim-treesitter]], true)
try_loadstring("\27LJ\2\nä\1\0\0\4\0\b\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\0025\3\6\0=\3\a\2B\0\2\1K\0\1\0\14highlight\1\0\2&additional_vim_regex_highlighting\1\venable\2\21ensure_installed\1\0\2\17auto_install\2\17sync_install\1\1\a\0\0\6c\blua\bvim\ago\15typescript\vpython\nsetup\28nvim-treesitter.configs\frequire\0", "config", "nvim-treesitter")
time([[Config for nvim-treesitter]], false)
-- Config for: git-blame
time([[Config for git-blame]], true)
try_loadstring("\27LJ\2\nF\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\1\fenabled\2\nsetup\rgitblame\frequire\0", "config", "git-blame")
time([[Config for git-blame]], false)
-- Config for: telescope.nvim
time([[Config for telescope.nvim]], true)
try_loadstring("\27LJ\2\nú\3\0\0\v\0\24\0-6\0\0\0'\2\1\0B\0\2\0026\1\0\0'\3\2\0B\1\2\0029\1\3\0015\3\t\0005\4\a\0005\5\5\0005\6\4\0=\6\6\5=\5\b\4=\4\n\0035\4\f\0005\5\v\0=\5\r\0045\5\14\0005\6\20\0005\a\16\0009\b\15\0B\b\1\2=\b\17\a9\b\15\0005\n\18\0B\b\2\2=\b\19\a=\a\6\6=\6\b\5=\5\21\4=\4\22\3B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\23\1'\3\r\0B\1\2\0016\1\0\0'\3\2\0B\1\2\0029\1\23\1'\3\21\0B\1\2\1K\0\1\0\19load_extension\15extensions\19live_grep_args\1\0\0\n<C-i>\1\0\1\fpostfix\14 --iglob \n<C-k>\1\0\0\17quote_prompt\1\0\1\17auto_quoting\2\bfzf\1\0\0\1\0\4\28override_generic_sorter\2\nfuzzy\2\14case_mode\15smart_case\25override_file_sorter\2\rdefaults\1\0\0\rmappings\1\0\0\6i\1\0\0\1\0\2\n<C-s>\16file_vsplit\n<C-i>\15file_split\nsetup\14telescope%telescope-live-grep-args.actions\frequire\0", "config", "telescope.nvim")
time([[Config for telescope.nvim]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
