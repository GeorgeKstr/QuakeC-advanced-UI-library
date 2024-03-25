const float terrain_noise_height = 1000;
const float terrain_frequency = 3000;
const float collision_block = 1000;
float bl = collision_block;
float colorvalue;
float component(float x, float height, float period)
{
	return height*sin(period*x*2*M_PI/terrain_frequency);
}

float component_derivative(float x, float height, float period)
{
	return height*cos(period*x*2*M_PI/terrain_frequency);
}

float generator_function(float x, float y)
{
	x+=terrain_frequency*32;
	
	float x_component = component(x, 0.45, 0.25)+component(x, 0.45, 0.37)+component(x, 0.1, 2.17);
	float y_component = component(y, 0.45, 0.25)+component(y, 0.45, 0.37)+component(y, 0.1, 2.31);
	return 0.5+0.5*x_component*y_component;
}
float get_noise(float x, float y)
{
	colorvalue = generator_function(x, y);
	vector c1,c2,c3,c4;
	c1_x=x;
	c1_y=y;
	c2=c1;
	return colorvalue;
}

float get_height(float x, float y)
{
	vector v1;
	vector c1, c2, c3, c4;
	entity e=world;
	e=getNextByType(e, OBJECT_LANDMARK);
	float temp_offs;
	float max_offs = 0;
	while(e)
	{
		if(vlen([e.origin_x, e.origin_y]-[x, y])<=e.radius)
		{
			v1_x = bl*floor(x/bl);
			v1_y = bl*floor(y/bl);
			v1_y = 0;
			c1 = v1;
			c2 = v1+'1 0 0'*bl;
			c3 = v1+'1 1 0'*bl;
			c4 = v1+'0 1 0'*bl;
			max_offs += (getLandmarkHeight(c1_x, c1_y, e)+getLandmarkHeight(c2_x, c2_y, e)+getLandmarkHeight(c3_x, c3_y, e)+getLandmarkHeight(c4_x, c4_y, e))/4;
		}
		e=getNextByType(e, OBJECT_LANDMARK);
	}
	//cprint(ftos(objects_head.origin_z));
	float result = max_offs;
	return result;
	
}
