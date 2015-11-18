local function convertToDecimal( hex_color ) --. Converts a hex color (e.g. "#FFFFFF") into decimal format (e.g. { 1, 1, 1, 1 })
	local red = (tonumber(hex_color:sub(2,3), 16) / 255)
	local green = (tonumber(hex_color:sub(4,5), 16) / 255)
	local blue = (tonumber(hex_color:sub(6,7), 16) / 255)
	
	return { red, green, blue, 1 }
end

return {
	-- Navbar --
	navbar_main_color   = convertToDecimal("#21412a"),  --. Sets navbar main color (FRANCISCAN GREEN)
	navbar_stroke_color = convertToDecimal("#998643"),	--. Sets navbar stroke color (FRANCISCAN GOLD)
	navbar_stroke_height = 6,							--. Sets navbar stroke width
	navbar_text_color   = { 1, 1, 1, 1 },				--. Sets navbar text color

	-- Posts List --
	post_list_background_color = { 0.8, 0.8, 0.8 },
	post_list_row_color = { 
		default = { 0.95, 0.95, 0.95, 1 }, 
		over = { 0.8, 0.8, 0.8, 1 } },
	post_list_row_line_stroke_width = 3,
	post_list_row_line_stroke_color = {0.5, 0.5, 0.5, 1}

}