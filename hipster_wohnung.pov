//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"


#include "kuehlschrank.pov"
#include "bett.pov"

#local lampe =
cone{ <0,5,0>,1, <0,0,0>,5 open
      texture{ pigment{ color Black}
               finish { phong 0.4 }
             }
}

#local teppich = 
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

#local bild = 
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



#declare wohnung =

union {

// indoor light
light_source{<20,20,20> color White}



object {
	bild
	translate<20,5,54.49>
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


object{
kuehlschrank
rotate<0,-45,0>
translate<8,0,50>
scale<0.8,0.8,0.8>
}

object{
bett
}

}



