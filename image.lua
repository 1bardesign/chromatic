--[[
	CPU-side image utilities
]]

local image = {}

--todo: import image_utils

--pad an image with a given colour
function image.pad(image, amount, r, g, b, a)
	--default
	r = r or 0
	g = g or r
	b = b or r
	a = a or 1
	--
	local w, h = image:getDimensions()
	local out = love.image.newImageData(w + amount * 2, h + amount * 2, image:getFormat())
	out:mapPixel(function(x, y)
		if
			x < amount or x >= amount + w
			or y < amount or y >= amount + h
		then
			return r, g, b, a
		else
			return image:getPixel(x - amount, y - amount)
		end
	end)
	return out
end

return image
