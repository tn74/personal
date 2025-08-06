local myPackages = {
  "options",
  "plugins",
  "mappings",
  "cmd",
  "lsptn",
}


function Load()
  for _, p in pairs(myPackages) do require(p) end
end

function Unload()
  for _, p in pairs(myPackages) do package.loaded[p] = nil end
end

function _G.Reload()
  Unload()
  Load()
  vim.notify("config relaoded")
end


Load()
