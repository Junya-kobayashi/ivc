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

#declare fach = 
 // Round_Box Fach
object{
 Round_Box(<0,0,0>,<9.5,0.1,9.8>, 0.125, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	}
}

#declare kuehlschrank = 
// -----------------------------------
union {
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

 // Round_Box Fach
object{
	fach
	translate<0.25,5,0.2>
}

object{
	fach
	translate<0.25,10,0.2>
}

object{
 Round_Box(<0,0,0>,<9.5,5,9.8>, 0.125, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	}
translate<0.25,15,0.2>

}

 // Round_Box TUER
object{
 Round_Box(<0,0,0>,<10,19,-0.5>, 0.125, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	}
	rotate<0,90,0>
	translate<0,0.5,0>
}
}
