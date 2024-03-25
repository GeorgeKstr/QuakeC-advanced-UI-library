entity		objects_head;
const float	OBJECT_LANDMARK = 88;




float	getLandmarkHeight(float x, float y, entity e)
{
	float i = vlen([x, y]-[e.origin_x, e.origin_y])/e.radius;
	return e.origin_z*(1+i*i*i*i-2*i*i);
}

void addMountain(vector pos, float radius)
{
	
}

entity getNextByType(entity e, float type)
{
	if(e==world)
	{
		if(objects_head && objects_head.object_type == type)
			return objects_head;
	}
	e=e.next;
	while(e)
	{
		if(e.object_type == type)
			return e;
	}
	return world;
}