#include "world.pov"
#include "hipster_haus.pov"
#include "hipster_aufstehen.pov"
#include "hipster_walking.pov"

camera{
	 location  <50 ,20 ,0>
     look_at   <20 , 10 ,20>
	//location  <0 ,15 ,-60>
    right x*image_width/image_height // so wegen 16:9
    angle 75
}
#declare hipster1 =
spline {
	linear_spline
	0.0 <11,4.3,8>
	1.0 <11,4.3,8>
	1.00001 <11,-20,8>
}

#declare hipster2 =
spline {
	linear_spline
	0.0 <16,-20,8>
	1.0 <16,-20,8>
	1.00001 <16,0,8>
	3.0 <25,0,20>
	5.0 <20,0,30>
}
#declare rotate_hipster2 =
spline {
	linear_spline
	0.0 <0,-90,0>
	2.0 <0,-180>
	4.0 <0,-225,0>
}

object {
	wohnung
}
#declare HEMD = color rgb<0,1,0>;
#declare LANGHEMD = color rgb<1,0.65,.5>;
#declare HOSE = color rgb<0,0	,1>;

object {
	hipster_aufstehen(HEMD, LANGHEMD, HOSE)
	rotate<0,180,0>
	translate  hipster1(clock)

}

object {
	hipster_walking(HEMD, LANGHEMD, HOSE)
	rotate rotate_hipster2(clock)
	translate hipster2(clock)
}
