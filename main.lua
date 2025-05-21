local plugin = {
  name = "IP",
  repo = "Noxxs0/IP_lua",
  file = "main.lua"
}

local pluginNameLua = tostring(plugin.name) .. ".lua"
local url = "https://raw.githubusercontent.com/" .. plugin.repo .. "/main/" .. plugin.file

print("you can use \n curl -L " .. url)


binding.exec("termux curl " .. url .. " -o " .. pluginNameLua)

binding.exec("termux termux-clipboard-set cat " .. pluginNameLua .. " | termux-clipboard-set")
print("script save in file: " .. plugin.name .. ".lua")
