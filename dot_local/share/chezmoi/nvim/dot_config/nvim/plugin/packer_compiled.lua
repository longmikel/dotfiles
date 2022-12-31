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
local should_profile = true
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
local package_path_str = "/Users/longhm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/longhm/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/longhm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/longhm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/longhm/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
  ["Comment.nvim"] = {
    config = { "\27LJ\2\n5\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\nsetup\fComment\frequire\0" },
    keys = { { "n", "gcc" }, { "n", "gbc" }, { "v", "gc" }, { "v", "gb" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/Comment.nvim",
    url = "https://github.com/numToStr/Comment.nvim"
  },
  ["FixCursorHold.nvim"] = {
    loaded = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/start/FixCursorHold.nvim",
    url = "https://github.com/antoinemadec/FixCursorHold.nvim"
  },
  ["any-jump.vim"] = {
    commands = { "AnyJump", "AnyJumpBack" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/any-jump.vim",
    url = "https://github.com/pechorin/any-jump.vim"
  },
  ["cmp-buffer"] = {
    after_files = { "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-cmdline"] = {
    after_files = { "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-cmdline/after/plugin/cmp_cmdline.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-cmdline",
    url = "https://github.com/hrsh7th/cmp-cmdline"
  },
  ["cmp-dictionary"] = {
    after_files = { "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-dictionary/after/plugin/cmp_dictionary.vim" },
    config = { "\27LJ\2\n®\1\0\0\4\0\a\0\0146\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\0016\0\0\0'\2\1\0B\0\2\0029\0\6\0B\0\1\1K\0\1\0\vupdate\bdic\1\0\2\rdocument\2\27first_case_insensitive\2\1\0\1\6*\27/usr/share/dict/en.dic\nsetup\19cmp_dictionary\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-dictionary",
    url = "https://github.com/uga-rosa/cmp-dictionary"
  },
  ["cmp-nvim-lsp"] = {
    after_files = { "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp/after/plugin/cmp_nvim_lsp.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-path"] = {
    after_files = { "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-vsnip"] = {
    after_files = { "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-vsnip/after/plugin/cmp_vsnip.lua" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/cmp-vsnip",
    url = "https://github.com/hrsh7th/cmp-vsnip"
  },
  ["crates.nvim"] = {
    after_files = { "/Users/longhm/.local/share/nvim/site/pack/packer/opt/crates.nvim/after/plugin/cmp_crates.lua" },
    config = { "\27LJ\2\ne\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\npopup\1\0\0\1\0\2\14autofocus\2\vborder\vsingle\nsetup\vcrates\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/crates.nvim",
    url = "https://github.com/saecki/crates.nvim"
  },
  ["diffview.nvim"] = {
    commands = { "DiffviewOpen", "DiffviewFileHistory" },
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdiffview\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/diffview.nvim",
    url = "https://github.com/sindrets/diffview.nvim"
  },
  ["dressing.nvim"] = {
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rdressing\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/dressing.nvim",
    url = "https://github.com/stevearc/dressing.nvim"
  },
  ["fidget.nvim"] = {
    config = { "\27LJ\2\nX\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\ttext\1\0\0\1\0\1\fspinner\tdots\nsetup\vfidget\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/fidget.nvim",
    url = "https://github.com/j-hui/fidget.nvim"
  },
  ["focus.nvim"] = {
    config = { "\27LJ\2\n{\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\23excluded_filetypes\1\0\1\15signcolumn\1\1\4\0\0\nfterm\tterm\15toggleterm\nsetup\nfocus\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/focus.nvim",
    url = "https://github.com/beauwilliams/focus.nvim"
  },
  ["friendly-snippets"] = {
    after = { "nvim-cmp" },
    keys = { { "n", ":" }, { "n", "/" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/friendly-snippets",
    url = "https://github.com/rafamadriz/friendly-snippets"
  },
  ["galaxyline.nvim"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19galaxyline_cfg\rload_cfg\fplugins\frequire\0" },
    load_after = {
      ["nvim-web-devicons"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/galaxyline.nvim",
    url = "https://github.com/Avimitin/galaxyline.nvim"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16gitsign_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["impatient.nvim"] = {
    loaded = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/start/impatient.nvim",
    url = "https://github.com/lewis6991/impatient.nvim"
  },
  ["indent-blankline.nvim"] = {
    config = { "\27LJ\2\nG\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\15indent_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["kanagawa.nvim"] = {
    cond = { "\27LJ\2\nR\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0\6\0\3\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\rkanagawa\ntheme\16core.colors\frequire\0" },
    config = { "\27LJ\2\nB\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\19kanagawa_setup\16core.colors\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/kanagawa.nvim",
    url = "https://github.com/rebelot/kanagawa.nvim"
  },
  ["lazygit.nvim"] = {
    commands = { "LazyGit" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/lazygit.nvim",
    url = "https://github.com/kdheepak/lazygit.nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16lspsaga_cfg\rload_cfg\fplugins\frequire\0" },
    load_after = {
      ["nvim-lspconfig"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/lspsaga.nvim",
    url = "https://github.com/tami5/lspsaga.nvim"
  },
  ["markdown-preview.nvim"] = {
    config = { "\27LJ\2\nQ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\25markdown_preview_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/markdown-preview.nvim",
    url = "https://github.com/iamcco/markdown-preview.nvim"
  },
  ["neoscroll.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18neoscroll_cfg\rload_cfg\fplugins\frequire\0" },
    keys = { { "n", "<C-k>" }, { "n", "<C-j>" }, { "n", "<C-l>" }, { "n", "<C-h>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/neoscroll.nvim",
    url = "https://github.com/karb94/neoscroll.nvim"
  },
  ["neovim-deus"] = {
    cond = { "\27LJ\2\nN\0\0\3\0\4\0\n6\0\0\0'\2\1\0B\0\2\0029\0\2\0\6\0\3\0X\0\2Ä+\0\1\0X\1\1Ä+\0\2\0L\0\2\0\tdeus\ntheme\16core.colors\frequire\0" },
    config = { "\27LJ\2\n>\0\0\3\0\3\0\0066\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\1K\0\1\0\15deus_setup\16core.colors\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/neovim-deus",
    url = "https://github.com/Avimitin/neovim-deus"
  },
  ["nvim-autopairs"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18autopairs_cfg\rload_cfg\fplugins\frequire\0" },
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-bufferline.lua"] = {
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19bufferline_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-bufferline.lua",
    url = "https://github.com/akinsho/nvim-bufferline.lua"
  },
  ["nvim-cmp"] = {
    after = { "nvim-autopairs", "cmp-cmdline", "vim-vsnip", "cmp-vsnip", "cmp-dictionary", "cmp-buffer", "cmp-path", "cmp-nvim-lsp" },
    config = { "\27LJ\2\nH\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\16nvimcmp_cfg\rload_cfg\fplugins\frequire\0" },
    load_after = {
      ["friendly-snippets"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-colorizer.lua"] = {
    commands = { "ColorizerToggle", "ColorizerAttachToBuffer" },
    config = { "\27LJ\2\nX\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0005\3\4\0=\3\5\2B\0\2\1K\0\1\0\bcss\1\0\1\vrgb_fn\2\1\2\0\0\6*\nsetup\14colorizer\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-colorizer.lua",
    url = "https://github.com/norcalli/nvim-colorizer.lua"
  },
  ["nvim-dap"] = {
    config = { "\27LJ\2\nD\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\fdap_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-dap",
    url = "https://github.com/mfussenegger/nvim-dap"
  },
  ["nvim-dap-ui"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-dap-ui",
    url = "https://github.com/rcarriga/nvim-dap-ui"
  },
  ["nvim-lsp-installer"] = {
    config = { "\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14lspconfig\frequire\0" },
    loaded = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/start/nvim-lsp-installer",
    url = "https://github.com/williamboman/nvim-lsp-installer"
  },
  ["nvim-lspconfig"] = {
    after = { "lspsaga.nvim", "fidget.nvim" },
    config = { "\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18lspconfig_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-neoclip.lua"] = {
    config = { "\27LJ\2\nf\0\0\3\0\5\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0B\0\1\0016\0\0\0'\2\3\0B\0\2\0029\0\4\0'\2\1\0B\0\2\1K\0\1\0\19load_extension\14telescope\nsetup\fneoclip\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-neoclip.lua",
    url = "https://github.com/AckslD/nvim-neoclip.lua"
  },
  ["nvim-notify"] = {
    config = { "\27LJ\2\n2\0\0\4\0\3\0\0066\0\0\0006\1\2\0'\3\1\0B\1\2\2=\1\1\0K\0\1\0\frequire\vnotify\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-notify",
    url = "https://github.com/rcarriga/nvim-notify"
  },
  ["nvim-spectre"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-spectre",
    url = "https://github.com/windwp/nvim-spectre"
  },
  ["nvim-tree.lua"] = {
    commands = { "NvimTreeRefresh", "NvimTreeToggle" },
    config = { "\27LJ\2\nI\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\17nvimtree_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-tree.lua",
    url = "https://github.com/kyazdani42/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    after = { "nvim-treesitter-textobjects" },
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19treesitter_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-treesitter-textobjects"] = {
    load_after = {
      ["nvim-treesitter"] = true
    },
    loaded = false,
    needs_bufread = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-treesitter-textobjects",
    url = "https://github.com/nvim-treesitter/nvim-treesitter-textobjects"
  },
  ["nvim-web-devicons"] = {
    after = { "galaxyline.nvim" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["popup.nvim"] = {
    loaded = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/start/popup.nvim",
    url = "https://github.com/nvim-lua/popup.nvim"
  },
  ["sort.nvim"] = {
    commands = { "Sort" },
    config = { "\27LJ\2\n6\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\tsort\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/sort.nvim",
    url = "https://github.com/sQVe/sort.nvim"
  },
  ["symbols-outline.nvim"] = {
    commands = { "SymbolsOutline" },
    config = { "\27LJ\2\nN\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\22symboloutline_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/symbols-outline.nvim",
    url = "https://github.com/simrat39/symbols-outline.nvim"
  },
  ["telescope.nvim"] = {
    config = { "\27LJ\2\nJ\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\18telescope_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["toggleterm.nvim"] = {
    commands = { "ToggleTerm" },
    config = { "\27LJ\2\nK\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0'\2\3\0B\0\2\1K\0\1\0\19toggleterm_cfg\rload_cfg\fplugins\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/toggleterm.nvim",
    url = "https://github.com/akinsho/toggleterm.nvim"
  },
  ["vfiler-column-devicons"] = {
    loaded = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/start/vfiler-column-devicons",
    url = "https://github.com/obaland/vfiler-column-devicons"
  },
  ["vfiler.vim"] = {
    commands = { "VFiler" },
    config = { "\27LJ\2\nÅ\1\0\0\4\0\6\0\t6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0005\3\3\0=\3\5\2B\0\2\1K\0\1\0\foptions\1\0\0\1\0\1\fcolumns(indent,devicons,name,mode,size,time\nsetup\18vfiler/config\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vfiler.vim",
    url = "https://github.com/obaland/vfiler.vim"
  },
  ["vim-dispatch"] = {
    commands = { "Dispatch" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-dispatch",
    url = "https://github.com/tpope/vim-dispatch"
  },
  ["vim-eunuch"] = {
    commands = { "SudoWrite", "SudoEdit", "Delete", "Unlink", "Move", "Rename", "Chmod", "Mkdir" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-eunuch",
    url = "https://github.com/tpope/vim-eunuch"
  },
  ["vim-flog"] = {
    commands = { "Flog", "Flogsplit" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-flog",
    url = "https://github.com/rbong/vim-flog"
  },
  ["vim-fugitive"] = {
    commands = { "G", "Git", "Ggrep", "Gdiffsplit", "GBrowse" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-fugitive",
    url = "https://github.com/tpope/vim-fugitive"
  },
  ["vim-markdown"] = {
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-markdown",
    url = "https://github.com/plasticboy/vim-markdown"
  },
  ["vim-markdown-toc"] = {
    commands = { "GenTocGFM" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-markdown-toc",
    url = "https://github.com/mzlogin/vim-markdown-toc"
  },
  ["vim-repeat"] = {
    keys = { { "n", "." } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-repeat",
    url = "https://github.com/tpope/vim-repeat"
  },
  ["vim-rooter"] = {
    config = { "\27LJ\2\n*\0\0\3\0\3\0\0056\0\0\0009\0\1\0'\2\2\0B\0\2\1K\0\1\0\vRooter\bcmd\bvim\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-rooter",
    url = "https://github.com/airblade/vim-rooter"
  },
  ["vim-sleuth"] = {
    loaded = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/start/vim-sleuth",
    url = "https://github.com/tpope/vim-sleuth"
  },
  ["vim-surround"] = {
    config = { "\27LJ\2\n®\1\0\0\a\0\n\0\0176\0\0\0'\2\1\0B\0\2\0029\0\2\0\18\1\0\0'\3\3\0'\4\4\0'\5\5\0005\6\6\0B\1\5\1\18\1\0\0'\3\3\0'\4\a\0'\5\b\0005\6\t\0B\1\5\1K\0\1\0\1\0\1\fnoremap\1\20<Plug>VSurround\ags\1\0\1\fnoremap\1\23<Plug>Lightspeed_S\6S\6x\bmap\19mappings.utils\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-surround",
    url = "https://github.com/tpope/vim-surround"
  },
  ["vim-table-mode"] = {
    commands = { "TableModeToggle" },
    loaded = false,
    needs_bufread = true,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-table-mode",
    url = "https://github.com/dhruvasagar/vim-table-mode"
  },
  ["vim-visual-multi"] = {
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-visual-multi",
    url = "https://github.com/mg979/vim-visual-multi"
  },
  ["vim-vsnip"] = {
    load_after = {
      ["nvim-cmp"] = true
    },
    loaded = false,
    needs_bufread = true,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-vsnip",
    url = "https://github.com/hrsh7th/vim-vsnip"
  },
  ["wildfire.vim"] = {
    keys = { { "n", "<Enter>" } },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/wildfire.vim",
    url = "https://github.com/gcmt/wildfire.vim"
  },
  ["winshift.nvim"] = {
    commands = { "WinShift" },
    config = { "\27LJ\2\n:\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup\rwinshift\frequire\0" },
    loaded = false,
    needs_bufread = false,
    only_cond = false,
    path = "/Users/longhm/.local/share/nvim/site/pack/packer/opt/winshift.nvim",
    url = "https://github.com/sindrets/winshift.nvim"
  }
}

time([[Defining packer_plugins]], false)
local module_lazy_loads = {
  ["^dap"] = "nvim-dap",
  ["^dapui"] = "nvim-dap-ui",
  ["^lspconfig"] = "nvim-lspconfig",
  ["^spectre"] = "nvim-spectre",
  ["^telescope"] = "telescope.nvim",
  ["^vim"] = "nvim-notify",
  ["^vim%.ui"] = "dressing.nvim"
}
local lazy_load_called = {['packer.load'] = true}
local function lazy_load_module(module_name)
  local to_load = {}
  if lazy_load_called[module_name] then return nil end
  lazy_load_called[module_name] = true
  for module_pat, plugin_name in pairs(module_lazy_loads) do
    if not _G.packer_plugins[plugin_name].loaded and string.match(module_name, module_pat) then
      to_load[#to_load + 1] = plugin_name
    end
  end

  if #to_load > 0 then
    require('packer.load')(to_load, {module = module_name}, _G.packer_plugins)
    local loaded_mod = package.loaded[module_name]
    if loaded_mod then
      return function(modname) return loaded_mod end
    end
  end
end

if not vim.g.packer_custom_loader_enabled then
  table.insert(package.loaders, 1, lazy_load_module)
  vim.g.packer_custom_loader_enabled = true
end

-- Setup for: lazygit.nvim
time([[Setup for lazygit.nvim]], true)
try_loadstring("\27LJ\2\n¥\3\0\0\3\0\14\1%6\0\0\0009\0\1\0)\1\0\0=\1\2\0006\0\0\0009\0\1\0)\1\1\0=\1\3\0006\0\0\0009\0\1\0005\1\5\0=\1\4\0006\0\0\0009\0\1\0)\1\0\0=\1\6\0006\0\0\0009\0\1\0)\1\1\0=\1\a\0006\0\0\0009\0\1\0009\0\a\0\t\0\0\0X\0\vÄ6\0\0\0009\0\b\0009\0\t\0'\2\n\0B\0\2\2\15\0\0\0X\1\4Ä6\0\0\0009\0\v\0'\1\r\0=\1\f\0K\0\1\0006nvr -cc split --remote-wait +'set bufhidden=wipe'\15GIT_EDITOR\benv\bnvr\15executable\afn\30lazygit_use_neovim_remote(lazygit_floating_window_use_plenary\1\5\0\0\b‚ï≠\b‚ïÆ\b‚ï∞\b‚ïØ)lazygit_floating_window_corner_chars+lazygit_floating_window_scaling_factor%lazygit_floating_window_winblend\6g\bvim\2\0", "setup", "lazygit.nvim")
time([[Setup for lazygit.nvim]], false)
-- Setup for: any-jump.vim
time([[Setup for any-jump.vim]], true)
try_loadstring("\27LJ\2\n≥\1\0\0\2\0\5\2\r6\0\0\0009\0\1\0*\1\0\0=\1\2\0006\0\0\0009\0\1\0*\1\1\0=\1\3\0006\0\0\0009\0\1\0)\1\1\0=\1\4\0K\0\1\0)any_jump_disable_default_keybindings!any_jump_window_height_ratio any_jump_window_width_ratio\6g\bvimµÊÃô\19ô≥¶ˇ\3õ≥ÊÃ\25Ãô≥ˇ\3\0", "setup", "any-jump.vim")
time([[Setup for any-jump.vim]], false)
-- Config for: nvim-lsp-installer
time([[Config for nvim-lsp-installer]], true)
try_loadstring("\27LJ\2\n)\0\0\3\0\2\0\0046\0\0\0'\2\1\0B\0\2\1K\0\1\0\14lspconfig\frequire\0", "config", "nvim-lsp-installer")
time([[Config for nvim-lsp-installer]], false)
-- Conditional loads
time([[Conditional loading of neovim-deus]], true)
  require("packer.load")({"neovim-deus"}, {}, _G.packer_plugins)
time([[Conditional loading of neovim-deus]], false)
time([[Conditional loading of kanagawa.nvim]], true)
  require("packer.load")({"kanagawa.nvim"}, {}, _G.packer_plugins)
time([[Conditional loading of kanagawa.nvim]], false)

-- Command lazy-loads
time([[Defining lazy-load commands]], true)
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ToggleTerm lua require("packer.load")({'toggleterm.nvim'}, { cmd = "ToggleTerm", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Gdiffsplit lua require("packer.load")({'vim-fugitive'}, { cmd = "Gdiffsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file TableModeToggle lua require("packer.load")({'vim-table-mode'}, { cmd = "TableModeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeRefresh lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeRefresh", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file NvimTreeToggle lua require("packer.load")({'nvim-tree.lua'}, { cmd = "NvimTreeToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Flog lua require("packer.load")({'vim-flog'}, { cmd = "Flog", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewFileHistory lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewFileHistory", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file DiffviewOpen lua require("packer.load")({'diffview.nvim'}, { cmd = "DiffviewOpen", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SymbolsOutline lua require("packer.load")({'symbols-outline.nvim'}, { cmd = "SymbolsOutline", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudoEdit lua require("packer.load")({'vim-eunuch'}, { cmd = "SudoEdit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Delete lua require("packer.load")({'vim-eunuch'}, { cmd = "Delete", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Unlink lua require("packer.load")({'vim-eunuch'}, { cmd = "Unlink", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Move lua require("packer.load")({'vim-eunuch'}, { cmd = "Move", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Sort lua require("packer.load")({'sort.nvim'}, { cmd = "Sort", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Chmod lua require("packer.load")({'vim-eunuch'}, { cmd = "Chmod", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Mkdir lua require("packer.load")({'vim-eunuch'}, { cmd = "Mkdir", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Rename lua require("packer.load")({'vim-eunuch'}, { cmd = "Rename", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file SudoWrite lua require("packer.load")({'vim-eunuch'}, { cmd = "SudoWrite", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Flogsplit lua require("packer.load")({'vim-flog'}, { cmd = "Flogsplit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Dispatch lua require("packer.load")({'vim-dispatch'}, { cmd = "Dispatch", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GenTocGFM lua require("packer.load")({'vim-markdown-toc'}, { cmd = "GenTocGFM", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerAttachToBuffer lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerAttachToBuffer", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file ColorizerToggle lua require("packer.load")({'nvim-colorizer.lua'}, { cmd = "ColorizerToggle", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file GBrowse lua require("packer.load")({'vim-fugitive'}, { cmd = "GBrowse", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file VFiler lua require("packer.load")({'vfiler.vim'}, { cmd = "VFiler", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file LazyGit lua require("packer.load")({'lazygit.nvim'}, { cmd = "LazyGit", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file WinShift lua require("packer.load")({'winshift.nvim'}, { cmd = "WinShift", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file G lua require("packer.load")({'vim-fugitive'}, { cmd = "G", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Git lua require("packer.load")({'vim-fugitive'}, { cmd = "Git", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file Ggrep lua require("packer.load")({'vim-fugitive'}, { cmd = "Ggrep", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AnyJump lua require("packer.load")({'any-jump.vim'}, { cmd = "AnyJump", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
pcall(vim.cmd, [[command -nargs=* -range -bang -complete=file AnyJumpBack lua require("packer.load")({'any-jump.vim'}, { cmd = "AnyJumpBack", l1 = <line1>, l2 = <line2>, bang = <q-bang>, args = <q-args>, mods = "<mods>" }, _G.packer_plugins)]])
time([[Defining lazy-load commands]], false)

-- Keymap lazy-loads
time([[Defining lazy-load keymaps]], true)
vim.cmd [[nnoremap <silent> <C-k> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-k>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-h> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-h>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> gc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-j> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-j>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gbc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gbc", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> / <cmd>lua require("packer.load")({'friendly-snippets'}, { keys = "/", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> : <cmd>lua require("packer.load")({'friendly-snippets'}, { keys = ":", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> . <cmd>lua require("packer.load")({'vim-repeat'}, { keys = ".", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[vnoremap <silent> gb <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gb", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <C-l> <cmd>lua require("packer.load")({'neoscroll.nvim'}, { keys = "<lt>C-l>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> <Enter> <cmd>lua require("packer.load")({'wildfire.vim'}, { keys = "<lt>Enter>", prefix = "" }, _G.packer_plugins)<cr>]]
vim.cmd [[nnoremap <silent> gcc <cmd>lua require("packer.load")({'Comment.nvim'}, { keys = "gcc", prefix = "" }, _G.packer_plugins)<cr>]]
time([[Defining lazy-load keymaps]], false)

vim.cmd [[augroup packer_load_aucmds]]
vim.cmd [[au!]]
  -- Filetype lazy-loads
time([[Defining lazy-load filetype autocommands]], true)
vim.cmd [[au FileType cpp ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "cpp" }, _G.packer_plugins)]]
vim.cmd [[au FileType javascript ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "javascript" }, _G.packer_plugins)]]
vim.cmd [[au FileType go ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "go" }, _G.packer_plugins)]]
vim.cmd [[au FileType toml ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "toml" }, _G.packer_plugins)]]
vim.cmd [[au FileType markdown ++once lua require("packer.load")({'markdown-preview.nvim', 'vim-markdown'}, { ft = "markdown" }, _G.packer_plugins)]]
vim.cmd [[au FileType lua ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "lua" }, _G.packer_plugins)]]
vim.cmd [[au FileType c ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "c" }, _G.packer_plugins)]]
vim.cmd [[au FileType json ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "json" }, _G.packer_plugins)]]
vim.cmd [[au FileType comment ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "comment" }, _G.packer_plugins)]]
vim.cmd [[au FileType rust ++once lua require("packer.load")({'nvim-treesitter'}, { ft = "rust" }, _G.packer_plugins)]]
time([[Defining lazy-load filetype autocommands]], false)
  -- Event lazy-loads
time([[Defining lazy-load event autocommands]], true)
vim.cmd [[au BufRead Cargo.toml ++once lua require("packer.load")({'crates.nvim'}, { event = "BufRead Cargo.toml" }, _G.packer_plugins)]]
vim.cmd [[au BufRead * ++once lua require("packer.load")({'vim-surround', 'nvim-web-devicons', 'gitsigns.nvim', 'indent-blankline.nvim', 'nvim-bufferline.lua'}, { event = "BufRead *" }, _G.packer_plugins)]]
vim.cmd [[au InsertEnter * ++once lua require("packer.load")({'vim-visual-multi', 'friendly-snippets'}, { event = "InsertEnter *" }, _G.packer_plugins)]]
vim.cmd [[au TextYankPost * ++once lua require("packer.load")({'nvim-neoclip.lua'}, { event = "TextYankPost *" }, _G.packer_plugins)]]
vim.cmd [[au VimEnter * ++once lua require("packer.load")({'packer.nvim'}, { event = "VimEnter *" }, _G.packer_plugins)]]
vim.cmd [[au BufReadPost * ++once lua require("packer.load")({'vim-rooter'}, { event = "BufReadPost *" }, _G.packer_plugins)]]
vim.cmd [[au WinEnter * ++once lua require("packer.load")({'focus.nvim'}, { event = "WinEnter *" }, _G.packer_plugins)]]
time([[Defining lazy-load event autocommands]], false)
vim.cmd("augroup END")
vim.cmd [[augroup filetypedetect]]
time([[Sourcing ftdetect script at: /Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], true)
vim.cmd [[source /Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]]
time([[Sourcing ftdetect script at: /Users/longhm/.local/share/nvim/site/pack/packer/opt/vim-markdown/ftdetect/markdown.vim]], false)
vim.cmd("augroup END")

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
