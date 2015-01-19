#include "world.pov"
#include "welthauser.pov"
//------------------------------------------
// camera ----------------------------------

#declare camfahrt =
spline {
	linear_spline
	0.0 <40,50,-300>
	0.5 <0,30,-145>
	1.0 <0,10,10>
}
#declare camlook =
spline {
	linear_spline
	0.0 <0,1,0>
	1.0 <4,10,10>
}
camera{ location  camfahrt(clock)
        look_at   camlook(clock)
        right x*image_width/image_height
        angle 75 }
// sun -------------------------------------
light_source{<1500,3000,-2500> color White}

object {
	hip_wohnung
}
object {
	haus1
}
object {
	haus2
}
object {
	emma
}
object {
	wald
}
object {
	strasse1
}
object {
	strasse2
}
