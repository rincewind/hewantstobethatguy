


var walking_speed = 8;

hspeed = 0;

if keyboard_check(vk_left) {
	// x += 10;
	show_debug_message("Links herum!");
	hspeed = -walking_speed;
} else if keyboard_check(vk_right) {
	hspeed = walking_speed;
} else {
	hspeed = 0;
}



if (speed == 0) {
	image_speed = 0;
} else {
	image_speed = 5;
}

var lay_id = layer_get_id("Tiles_1");
var map_id = layer_tilemap_get_id(lay_id);


var abstand = 1;

var t1 = tilemap_get_at_pixel(map_id, bbox_left, bbox_bottom + abstand) & tile_index_mask;
var t2 = tilemap_get_at_pixel(map_id, bbox_right, bbox_bottom + abstand) & tile_index_mask;

if (!t1 && !t2) {
	vspeed += 3;
} else if (vspeed > 0) {
	vspeed = 0;
} else {
	// hueppen
   if keyboard_check_pressed(vk_space) {
	  vspeed += -20;
   }
}

// vspeed *= 0.9;
