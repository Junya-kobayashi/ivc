#include "shapes.inc"
#include "colors.inc"
#include "textures.inc"
global_settings { charset utf8 }

//------------------------------------------
// camera ----------------------------------
camera { 
	    location <0,10,-26>
		look_at <0,10,0>
		angle 100
}
// sky -------------------------------------
plane{ <0,1,0>,1 hollow
       texture{
         pigment{ bozo turbulence 0.92
           color_map{
                 [0.00 rgb<0.05,0.15,0.45>]
                 [0.50 rgb<0.05,0.15,0.45>]
                 [0.70 rgb<1,1,1>        ]
                 [0.85 rgb<0.2,0.2,0.2>  ]
                 [1.00 rgb<0.5,0.5,0.5>  ]
                       } //
           scale<1,1,1.5>*2.5
           translate<0,0,0>
           } // end of pigment
         finish {ambient 1 diffuse 0}
        } // end of texture
       scale 10000}
// fog on the ground -----------------------
/*fog { fog_type   2
      distance   50
      color      rgb<1,1,1>*0.8
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
    }*/ //
// ground ----------------------------------
plane{ <0,1,0>, 0
       texture{
          pigment{ color rgb<0.22,0.45,0>}
          normal { bumps 0.75 scale 0.015 }
          finish { phong 0.1 }
       } // end of texture
     } // end of plane
//------------------------------------------

light_source { <100,300,-300> color White }

#declare text1_spline =
spline {
	linear_spline
	0.0 <-21,70,0>
	0.1 <-21,0,0>
	0.4 <-21,0,0>
	0.5 <-21,-70,0>
}
#declare text2_spline = 
spline {
	linear_spline
	0.0 <-19,70,0>
	0.3 <-19,70,0>
	0.4 <-19,0,0>
	0.6 <-19,0,0>
	0.7 <-19,-70,0>
}
#declare text3_spline = 
spline {
	linear_spline
	0.0 <-3,70,0>
	0.5 <-3,70,0>
	0.6 <-3,0,0>
	0.8 <-3,0,0>
	0.9 <-3,-70,0>
}

text {
        ttf "Walkway.ttf",
        "HIPSTER ANNO 2420",
        5,
		0
        texture { pigment { White }}
        scale <10,10,1>
        
        translate text1_spline(clock)
        rotate <0,-25,0>
}
text {
        ttf "Walkway.ttf",
        "IN FULL HD 60 FPS",
        5,
        0
        texture { pigment { White }}
        scale <10,10,1>
        
        translate text2_spline(clock)
        rotate <0,-25,0>
}

text {
	ttf "Walkway.ttf",
	"DIGGA!",
	10,
	0
	texture { pigment { White }}
	scale <10,10,1>
	translate text3_spline(clock)
	rotate<0,-25,0>
}
