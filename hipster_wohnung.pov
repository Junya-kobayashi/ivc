#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
//------------------------------------------
// camera ----------------------------------
camera{ location  <20 ,20 ,40>
        look_at   <20 , 20 , 0>
        right x*image_width/image_height
        angle 75 }
// sun -------------------------------------
light_source{<20,20,20> color White}


#declare fenster = 
 // Round_Box Fenster
object{
 Round_Box(<0,0,0>,<20,20,20>, 0.125, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	}
  translate<0,0,30>
}

#declare raum = 
box{ <0,0,0>, <40,30,40>
     pigment{ checker
              color rgb<1,1,1>
              color rgb<1,1,1>*0
              scale <0.5,0.25,0.5> }
   }

difference {
object {
	raum
	rotate<0.0,0>
}

object {
	fenster
	rotate<0,0,0>
}
}
