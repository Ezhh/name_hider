
minetest.register_chatcommand("hidenames", {
	description = "Make all nametags invisible",
	privs = {server = true},
	func = function(name, param)
		for _, player in pairs(minetest.get_connected_players()) do
			player:set_nametag_attributes({color = {a = 0, r = 255, g = 255, b = 255}})
		end
	end
})

minetest.register_chatcommand("shownames", {
	description = "Make all nametags visible",
	privs = {server = true},
	func = function(name, param)
		for _, player in pairs(minetest.get_connected_players()) do
			player:set_nametag_attributes({color = {a = 255, r = 255, g = 255, b = 255}})
		end
	end
})

