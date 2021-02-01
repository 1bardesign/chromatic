--[[
	central module for chromatic
]]

local path = ...
local function relative_require(module_name)
	return require(path .. "." .. module_name)
end

return {
	image = relative_require("image"),
	texture = relative_require("texture"),
}
