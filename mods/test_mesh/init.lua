minetest.register_node("test_mesh:mesh", {
    description = ("Mesh"),
	inventory_image = "default_torch_on_floor.png",
	drawtype = "mesh",
	mesh = "tinker.obj",
	tiles = {"default_pine_wood.png"},
	use_texture_alpha = "clip",
	paramtype = "light",
	sunlight_propagates = true,
	walkable = false,
	groups = {choppy=2, dig_immediate=3, flammable=1},
	drop = "test_mesh:test_mesh",
	paramtype2 = "facedir",
	on_place = function(itemstack, placer, pointed_thing)		
		local param2 = minetest.dir_to_facedir(placer:get_look_dir())
			
		minetest.item_place(itemstack, placer, pointed_thing, param2)	
	end
})