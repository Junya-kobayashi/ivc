#include "koerperteile.pov"
/*camera {
    location <30,30,-30>
    look_at <0,8,0>
    angle 40
}
light_source { < 10,30,-30> color White }
*/
#declare oberkoerper_spline =
spline {
	linear_spline
	0.0 <0,0,0>
	0.25 <-90,0,0>
}
#declare koerper_spline = 
spline {
	linear_spline
	0.0 <90,0,0>
	0.25 <90,0,0>
	0.5 <90,90,0>
}
#declare koerper_trans =
spline {
	linear_spline
	0.0 <0,0,0>
	0.75 <0,0,0>
	0.875 <0,-1,-2>
	1.0 <0,-4,-4>
}

#declare unterschenkel_spline =
spline {
	linear_spline
	0.0 <0,0,0>
	0.5 <0,0,0>
	0.75 <-90,0,0>
}
#declare oberschenkel_spline =
spline {
	linear_spline
	0.0 <0,0,0>
	0.75 <0,0,0>
	1.0 <-90,0,0>
}


#declare hipster_aufstehen =
union {
	//head
	union {
		
		object {
			kopf
		}
		object {
			koerper
			
		}
		// rechter arm
		union {
			object {
				oberarm_rechts
			}
			object {
				unterarm
				translate<0,-4,0>
			}
			translate <-2.5,14,0>
		}
		// linker arm
		union {
			object {
				oberarm_links
			}
			object {
				unterarm
				translate<0,-4,0>
			}
			translate <2.5,14,0>
		}
		translate<0,-8,0>
		rotate oberkoerper_spline(clock)
		translate<0,8,0>
		translate koerper_trans(clock)
	}
	// rechts bein
	union {
		object {
			oberschenkel
			translate<0,4,0>
			rotate oberschenkel_spline(clock)
			translate<0,-4,0>
			
		}
		object {
			unterschenkel
			rotate unterschenkel_spline(clock)
			translate<0,-4,0>
		}
		translate <-1,8,0>
	}
	// linkes bein
	union {
		object {
			oberschenkel
			translate<0,4,0>
			rotate oberschenkel_spline(clock)
			translate<0,-4,0>
		}
		object {
			unterschenkel
			rotate unterschenkel_spline(clock)
			translate<0,-4,0>
		}
		translate <1,8,0>
	}
	translate<0,-8,0>
	rotate koerper_spline(clock)
}

