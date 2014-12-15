#include "world.pov"
#include "hipster_wohnung.pov"
#include "hipster_aufstehen.pov"
#include "hipster_walking.pov"

camera{ location  <40 ,15 ,0>
        look_at   <0 , 10 ,45>
        right x*image_width/image_height
        angle 90 }
// sun -------------------------------------



#declare hipster1 = 
spline {
	linear_spline
	0.0 <11,4,8>
	1.0 <11,4,8>
	1.00001 <11,-20,8>
}

#declare hipster2 = 
spline {
	linear_spline
	0.0 <16,-20,8>
	1.0 <16,-20,8>
	1.00001 <16,0,8>
	3.0 <20,0,20>
	5.0 <8,0,30>
}
#declare rotate_hipster2 = 
spline {
	linear_spline
	0.0 <0,-90,0>
	2.0 <0,-180>
	4.0 <0,-225,0>
	5.0 <0,-180,0>
}
object {
	hipster_aufstehen
	rotate<0,180,0>
	translate  hipster1(clock)
	
}

object {
	hipster_walking
	rotate rotate_hipster2(clock)
	translate hipster2(clock)
}
