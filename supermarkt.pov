#version 3.7;
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

camera
{ 
	//location <130,20,20>
	location  <50,50,-80>
   	right x*image_width/image_height // so wegen 16:9
	//look_at <0,10,80>
	look_at <50,10,80>
    	angle 90 
}

#declare Tube_Length = 10;
#declare Tube_End = 20;
#declare Tube = 

union{ 
 cylinder{ < 0,0,0>,<Tube_End,0,0>, 0.025 
           texture { Chrome_Metal } 
           translate <0,0,0>
         } // end of cylinder  ------------------------------------
 cylinder{ <-Tube_End,0,0>,<0.00,0,0>, 0.025 
           texture { Chrome_Metal } 
           translate <Tube_Length,0,0>
         } // end of cylinder  ------------------------------------
 cylinder{ <Tube_End,0,0>,<Tube_Length-Tube_End,0,0>, 0.3 
           texture { pigment { color rgb<1,1,1>}
                     finish  { ambient 0.8 diffuse 0.2 phong 1 reflection 0.25 }
                   } // end of texture
         }
}

light_source{<100,200,30> color White}

#declare licht = 
light_source{ <0,0,0>
              color rgb<1,1,1>
              area_light
              <0, 0, 0> <2, 0, 0>
              1,10 // numbers in directions
              adaptive 0  // 0,1,2,3...
              jitter // random softening
              looks_like{
                          object{ Tube rotate<0,90,0> }
                        }
              translate<0,1,0>
             }

#declare Window_Glass =
texture{
  pigment{ rgbf<0.98,0.98,0.98,0.8>}
  finish { diffuse 0.1
           reflection 0.2
           specular 0.8
           roughness 0.0003
           phong 1
           phong_size 400}
  }

#declare obststand =
union
{
object
{
box{<0,0,0>, <15,1,70> pigment{color White} rotate <0,0,320> translate <0,13,5> 
		texture{ pigment { image_map
			{ 
			bmp "obst.bmp"
			map_type 0 //type für plane/box
			//once //gif wird in der Fläche nicht wiederholt
                        }
			scale<0.02,0,0.025>
                  }
	}}
}
object
{
box{<0,0,0>, <15,5,70> pigment{color White} translate <0,25,5>}
}
object
{
box{<0,0,0>, <15,1,70> texture{Silver_Metal} rotate <0,0,40> translate <0,15,5>}
}
box{<0,0,0>, <15,5,70> pigment{color White} translate <0,0,5>}
}

#declare schrank_mitte =
box{<0,0,0>, <40,10,20> pigment{color White}}

#declare X = 10;
#declare Y = 10;
#declare Z = 10;

#declare kaesestand =
union
{

}

#declare Tuer =
union
{
	difference
	{
		object
		{
			box {<0,0,0>, <11,26,0.5> pigment{color Black}}
			translate<1,1,-0.5>
		}
		object
		{
			box {<0,0,0>, <10,25,1> texture{Window_Glass}}
			translate<1.5,1.5,-0.5>
		}
	}
}

#declare schrank =
union
{
	difference
	{
		object
		{
			box {<0,0,0>, <12,27,5> pigment{color White}}
		}
		object
		{
			box {<0,0,0>, <10,7,5> pigment{color White}}
			translate<2,2,-1>
		}
		object
		{
			box {<0,0,0>, <10,7,5> pigment{color White}}
			translate<2,10,-1>
		}
		object
		{
			box {<0,0,0>, <10,7,5> pigment{color White}}
			translate<2,18,-1>
		}
	}
	Tuer
}

#declare fronttuer =	
union
{
	object
	{
	Tuer scale<0.65,1,1> translate<35.3,-1,-25>
	}
	object
	{
	Tuer scale<0.65,1,1> translate<42.3,-1,-25>
	}
	object
	{
	Tuer scale<0.65,1,1> translate<49.3,-1,-25>
	}
	object
	{
	Tuer scale<0.65,1,1> translate<56.3,-1,-25>
	}
}

#declare schrankmodul =
//LAENGE 2 x 12
union
{
object
{
	schrank
	translate<15,0,75>
}
object
{
	schrank
	translate<27,0,75>
}
}

#declare supermarkt =
		//Traeger
		box{<0,0,0>, <15,30,5> pigment{ color White }}
		box{<0,0,0>, <15,30,5> pigment{ color White } translate<0,0,75>}
		difference
		{	
			object
			{
			box 
			{<0,0,0>, <150,30,80>
		    		 pigment{ color White }
			}
			}
			object 
			{		
			box
			{<0,0,0>, <28,26,32>
				translate<36,0.1,-31>
				pigment{ color White }
			}
			}
			object 
			{		
			box
			{<0,0,0>, <28,26,32>
				translate<36,0.1,-31>
				pigment{ color White }
			}
			}
		}
		difference
		{
			object 
			{		
			box
			{<0,0,0>, <30,28,25>
				translate<35,0,-25>
				pigment{ color White }
			}
			}
			object 
			{		
			box
			{<0,0,0>, <28,26,27>
				translate<36,-1,-25>
				pigment{ color White }
			}
			}
			object 
			{		
			box
			{<0,0,0>, <28,26,27>
				translate<36,-1,-26>
				pigment{ color White }
			}
			}
		}

	object {fronttuer}

	//Parkplatz
	box
	{<0,0,0>, <80,0,23>
		translate<68,0.1,-25>
		pigment{ color White }
	}


object 
{
	supermarkt
}

object
{
	union
	{
//	object{licht translate<10,26,40>}
//	object{licht translate<30,26,40>}
//	object{licht translate<50,26,40>}
	object{licht translate<70,26,40>}
//	object{licht translate<90,26,40>}
//	object{licht translate<110,26,40>}
//	object{licht translate<130,26,40>}
	}
}

object
{
	obststand
}

object
{
	kaesestand
	translate<80,0,50>
}

object 
{
	schrankmodul
}
object 
{
	schrankmodul
	translate<24,0,0>
}
object 
{
	schrankmodul
	translate<48,0,0>
}

object
{
	schrank_mitte
	translate<50,0,25>
}
