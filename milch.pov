#include "colors.inc"
#include "textures.inc"

camera 
{
	  	location <0,20,-30>
		look_at <0,0,0>
		right x*image_width/image_height
		angle 75
}

light_source { <100,300,-300> color White }

#declare milch =
union
{
	box	{<0,0,0>, <5,10,5>
		texture{pigment{color White}}
		}
	box	{<0,0,0>, <3.5,3.5,5>
		texture{pigment{color White}}
		rotate<0,0,45>
		translate <2.5,7.5,0>
		}
	box	{<0,0,0>, <0.1,3,5>
		texture{pigment{color White}}
		translate<2.5,10,0>
		}
}


object{milch}
