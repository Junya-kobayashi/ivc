#include "shapes.inc"
#include "colors.inc"
#include "textures.inc"
#include "welthauser.pov"
global_settings { charset utf8 }

//------------------------------------------
// camera ----------------------------------
camera { 
	    location <40,50,-200>
		look_at <0,1,0>
		right x*image_width/image_height
		angle 75
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
fog { fog_type   2
      distance   50
      color      rgb<1,1,1>*0.8
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
    } //
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
// höhe schrift 32
#declare text1_spline =
spline {
	linear_spline
	0.0 <-125,320,-15>
	0.24 <-125,32,-15>
	0.25 <-125,0,-15>
	0.5 <-125,0,-15>
	0.55 <-125,-32,-15>
	0.75 <-125,-200,-15>
}
#declare text2_spline = 
spline {
	linear_spline
	0.0 <-105,320,-15>
	0.25 <-105,320,-15>
	0.5 <-105,32,-15>
	0.55 <-105,0,-15>
	0.95 <-105,0,-15>
	1.0 <-105,-32,-15>
}

#declare strasse1_spline = 
spline {
	linear_spline
	0.0 <0,640,0>
	0.75 <0,640,0>
	0.95 <0,32,0>
	1.0 <0,0,0>
}
#declare strasse2_spline =
spline {
	linear_spline
	0.0 <0,320,0>
	1.0 <0,320,0>
	1.25 <0,0,0>
}
#declare haus1_spline = 
spline {
	linear_spline
	0.0 <0,320,0>
	1.2 <0,320,0>
	1.45 <0,0,0>
}
#declare haus2_spline = 
spline {
	linear_spline
	0.0 <0,320,0>
	1.3 <0,320,0>
	1.55 <0,0,0>
}
#declare emma_spline =
spline {
	linear_spline
	0.0 <0,320,0>
	1.4 <0,320,0>
	1.65 <0,0,0>
}
#declare wohnung_spline =
spline {
	linear_spline
	0.0 <0,320,0>
	1.5 <0,320,0>
	1.75 <0,0,0>
}
#declare wald_spline =
spline {
	linear_spline
	0.0 <0,320,0>
	1.6 <0,320,0>
	1.85 <0,0,0>
}

text {
        ttf "Walkway.ttf",
        "HIPSTER ANNO 2420",
        5,
		0
        texture { pigment { White }}
        scale <32,40,20>
        
        translate text1_spline(clock)
        rotate <0,-25,0>
}
text {
        ttf "Walkway.ttf",
        "IN FULL HD 60FPS",
        5,
        0
        texture { pigment { White }}
        scale <32,40,20>
        
        translate text2_spline(clock)
        rotate <0,-25,0>
}
object {
	strasse1
	translate strasse1_spline(clock)
} 
object {
	strasse2
	translate strasse2_spline(clock)
}
object {
	haus1
	translate haus1_spline(clock)
}
object {
	haus2
	translate haus2_spline(clock)
}
object {
	emma
	translate emma_spline(clock)
}
object {
	hip_wohnung
	translate wohnung_spline(clock)
}
object {
	wald
	translate wald_spline(clock)
}