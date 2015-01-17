#include "world.pov"
#include "welthauser.pov"
#include "hipster_walking.pov"


#declare walking_spline = 
spline {
	linear_spline
	0.0 <50,0,0>
	1.0 <40,0,0>
	6.0 <-10,0,-50>
	17.0 <-10,0,-120>
}
#declare hiprotate =
spline {
	linear_spline
	0.0 <0,90,0>
	1.0 <0,90,0>
	5.0 <0,0,0>
}

#declare camfahrt =
spline {
	linear_spline
	0.0 <0,10,-100>
	8.0 <0,10,-100>
}

#declare camlook =
spline {
	linear_spline
	0.0 <0,10,0>
	6.0 <0,10,0>
	14.0 <-20,10,-120>
	//8.0 <0,10,-160>
}

camera { 
	    location camfahrt(clock)
		look_at camlook(clock)
		right x*image_width/image_height
		angle 75
}

object {
	strasse1
}
object {
	strasse2
}
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
	hipster_walking
	rotate hiprotate(clock)
	translate walking_spline(clock)
}
