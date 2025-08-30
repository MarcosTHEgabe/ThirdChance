if (instance_exists(obj_player)) {
	var hitId = collision_line(x,y,obj_player.x,obj_player.y,self,false,true)
	if hitId {
		direction = point_direction(x,y,hitId.x,hitId.y)
	}
}

