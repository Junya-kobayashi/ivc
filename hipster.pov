#include "colors.inc"
#include "koerperteile.pov"
/*camera {
    location <30,30,-30>
    look_at <0,8,0>
    angle 40
}
light_source { < 10,30,-30> color White }
*/

#declare hipster =
union {
    //head
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
	// rechts bein
	union {
		object {
			oberschenkel
		}
		object {
			unterschenkel
			translate<0,-4,0>
		}
		translate <-1,8,0>
	}
	// linkes bein
	union {
		object {
			oberschenkel
		}
		object {
			unterschenkel
			translate<0,-4,0>
		}
		translate <1,8,0>
	}
}
