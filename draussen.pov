#include "world.pov"
#include "welthauser.pov"
#include "hipster_walking.pov"
#include "hipster.pov"
#include "hoverboard.pov"

#declare walking_spline =
spline {
	linear_spline
	0.0 <50,0,0>
	8.0 <-10,0,0>
	16.0 <-10,0,-100>
	16.00001 <-10,-20,-100>
	18.99999 <-10,0,-100>
	19.0 <-10,0,-100>
	34.0 <-10,0,-190>
}

#declare hip1_stand =
spline {
	linear_spline
	0.0 <-10,-20,-100>
	15.99999 <-10,-20,-100>
	16.0 <-10,0,-100>
	19.0 <-10,0,-100>
	19.00001 <-10,-20,-100>
}

#declare hiprotate =
spline {
	linear_spline
	0.0 <0,90,0>
	7.0 <0,90,0>
	9.0 <0,0,0>
}

#declare hip2_walkling =
spline {
	linear_spline
	0.0 <-70,2,40>
	4.0 <-70,2,40>
	10.0 <0,2,40>
	16.0 <0,2,-100>
	19.0 <0,2,-100>
	34.0 <0,2,-190>
}

#declare hip2_rotate =
spline {
	linear_spline
	0.0 <0,0,0>
	9.0 <0,0,0>
	11.0 <0,90,0>
}

#declare camfahrt =
spline {
	linear_spline
	0.0 <0,20,-100>
	8.0 <0,20,-100>
	16.0 <20,30,-100>
}

#declare camlook =
spline {
	linear_spline
	0.0 <0,10,0>
	6.0 <0,10,0>
	16.0 <0,10,-100>
	18.0 <0,10,-100>
	34.0 <-20,10,-190>
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
object {
	hipster
	translate hip1_stand(clock)
}

union {
	object {
		hipster
	}
	object {
		hoverboard
	}
	rotate hip2_rotate(clock)
	translate hip2_walkling(clock)
}
