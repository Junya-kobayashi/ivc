// POV-Ray 3.6/3.7 Scene File "Minimal.pov"
// by Friedrich A. Lohmueller, Jan-2013
//-------------------------------------------
#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"
//------------------------------------------
// camera ----------------------------------
camera{ location  <0.0 , 10 ,-30>
        look_at   <0.0 , 10 , 0.0>
        right x*image_width/image_height
        angle 75 }
// sun -------------------------------------
light_source{<1500,3000,-2500> color White}

#declare kuehlschrank = 
// -----------------------------------
difference
{
 // Round_Box(A, B, WireRadius, Merge)
object{
 Round_Box(<0,0,0>,<10,20,10>, 0.25, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	} // end of texture
 	scale<1,1,1>
}
 // Round_Box für difference
object{
 Round_Box(<0.5,1.5,-0.1>,<10,20,10>, 0.125, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	} // end of texture
 	scale<0.95,0.95,0.95>
}
}
 // Round_Box TUER
object{
 Round_Box(<0,0.8,0>,<9,19,2>, 0.125, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	} // end of texture
 	scale<1,1,1>
	rotate<0,-180,0>
}



object {
	kuehlschrank
}
