#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


#include "kuehlschrank.pov"
#include "bett.pov"

#declare wohnung =

union{

// indoor light
light_source{<20,20,20> color White}

#declare fenster = 
box { <0,0,0>, <8,10,0>
 texture{
   	pigment{ rgbf<0.98,0.98,0.98,0.8>}
  finish { diffuse 0.1
           reflection 0.2
           specular 0.8
           roughness 0.0003
           phong 1
           phong_size 400}
}

#declare lampe =
cone{ <0,5,0>,1, <0,0,0>,5 open
      texture{ pigment{ color Black}
               finish { phong 0.4 }
             }
}

#declare teppich = 
box { <0,0,0>, <20,0,25>
 texture{ pigment { image_map
			{ 
			gif "teppich.gif"
			map_type 0 //type für plane/box
			//once //gif wird in der Fläche nicht wiederholt
                        }
			scale<0.02,0,0.025>
                  }
	}
}

#declare bild = 
box { <0,0,0>, <8,14,0>
 texture{ pigment { image_map
			{ 
			gif "poster.gif"
			map_type 0
                        }
		}
			finish { diffuse 0.1
          			reflection 0.2
           			specular 0.8
           			roughness 0.0003
           			phong 1
           			phong_size 400}
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

object {
	bild
	translate<30,5,49.99>
}
object {
	bild
	rotate<0,90,0>
	translate<0.01,5,25>
}
object {
	lampe
	translate<20,22,20>
}

object {
teppich
translate<20,0.01,10>
}
}

object{
kuehlschrank
translate<2,0,50>
scale<0.8,0.8,0.8>
}

object{
bett
}




