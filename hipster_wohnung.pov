#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


#include "kuehlschrank.pov"
//------------------------------------------
// camera ----------------------------------
camera{ location  <40 ,20 ,0>
        //look_at   <20 , 20 ,50>
        look_at <0,10,45>
        right x*image_width/image_height
        angle 90 }
// sun -------------------------------------
light_source{<200,200,200> color White}

// indoor light
light_source{<20,20,20> color White}

#declare fenster = 
box { <0,0,0>, <8,10,0>
 texture{
   	pigment{ color White}
   	finish { phong 1}
	}
}

#declare bild = 
box { <0,0,0>, <8,14,0>
 texture{ pigment { image_map
			{ 
			gif "poster.gif"
			map_type 0
                        }
			scale<8,14,0>
                  }
	}
}

#declare tuer = 
box { <0,0,0>, <12,18,0>
 texture{
   	pigment{ color White}
   	finish { phong 1}
	}
}

#declare raum = 
box{ <0,0,0>, <50,30,50>
     pigment{ color White }
   }

union{
difference {
object {
	raum
}
//FUCK WIESO 2X
object {
	fenster
	translate<15,10,50>
}
object {
	fenster
	translate<15,10,50>
}
object {
	tuer
	rotate<0,90,0>
	translate<50,0,50>
}
object {
	tuer
	rotate<0,90,0>
	translate<50,0,45>
}
}
object {
	bild
	translate<30,5,49.9>
}
}
object{
kuehlschrank
translate<2,0,50>
scale<0.8,0.8,0.8>
}



