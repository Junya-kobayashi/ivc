#include "colors.inc"

#declare finger = 
union {
    cone {
        <0,.4,0>, .05, <0,.6,0>, .05
        texture { pigment { White }}
    }
    cone {
        <0,.6,0>, .05, <0,.8,-0>, .05
        texture { pigment { White }}
    }
    cone {
        <0,.8,0>, .05, <0,1,0>, .05
        texture { pigment { White }}
    }
    sphere {
		<0,1,0>, .05
        texture { pigment { White }}
    }
}

#declare daumen = 
union {
    cone {
        <0,.4,0>, .05, <0,.55,0>, .05
        texture { pigment { White }}
    }
    cone {
        <0,.55,0>, .05, <0,.7,0>, .05
        texture { pigment { White }}
    }
    sphere {
        <0,.7,0>, .05
        texture { pigment { White }}
    }
}

#declare hand = 
union {
    sphere {
        0,.4
        texture { pigment { White }}
        scale <.8,0,.2>
        translate<0,0,0>
    }
    // daumen
    object {
        daumen
        translate <-.1,-.08,0>
        rotate <0,0,30>
    }
    // zeigefinger
    object {
        finger
        translate <-.11,-.10,0>
        rotate <0,0,5>
    }
    //mittelfinger
    object {
        finger
        translate <0,-.05,0>
    }
    // ringfinger
    object {
        finger
        rotate <0,0,-2>
        translate <.11,-.08,0>
    }
    // kleine finger
    object {
        finger
        rotate <0,0,-3>
        scale <1,.8,1>
        translate <.22,-.12,0>
    }
}

#declare oberarm_rechts = 
union {
	//oberarm
	cone { 
        //<-2.5,10,0>, .5, <-1.5,14,0> .5
        <0,-4,0>, .4, <1,0,0>, .4
        texture { pigment { White }}
    }
    //ellenbogen
    sphere {
        0, .4
        texture { pigment { White }}
        translate<0,-4,0>
    }
}
#declare oberarm_links =
union {
	cone { 
			<0,-4,0>, .4, <-1,0,0> .4
			texture { pigment { White }}
    }
    //ellenbogen
    sphere {
        0, .4
        texture { pigment { White }}
        translate<0,-4,0>
    }
}

#declare unterarm =
union {
        cone { 
            <0,-2,-1>, .2, <0,-0,0>, .4
            texture { pigment { White }}
        }
        object {
            hand
            rotate<0,-90,180>
            translate<0,-2,-1>
        }
            
}

#declare oberschenkel =
union {
	cone { 
        <0,-4,0>, .6, <0,0,0> .75
        texture { pigment { White }}
    }
    //knie
    sphere {
        0, .6
        texture { pigment { White }}
        translate<0,-4,0>
    }
}
#declare unterschenkel =
union {
        cone { 
            <0,-4,1>, .4, <0,0,0>, .6
            texture { pigment { White }}
        }
        // fuss
        difference {
            sphere {
                <0,0,.2>, .5
                texture { pigment { White }}
                scale<1,1,2>
            }   
            box {
                <-1,0,-2>, <1,-1,2>
                texture { pigment { White }}
            }
            rotate <-4,0,0>
            translate<0,-4,0>
        }
	}
#declare HAUT = color rgb<1,0.65,0.50>;
#declare LIPPEN = color rgb<1, 0.25, .1>;
#declare kopf =
union {
	sphere { 0, 1
		texture { pigment { HAUT } }
		translate<0,15,0> 
		scale<1,1,1>
	}
	//nase
	sphere { 0, .2
		texture { pigment { HAUT }}
		translate<0,15,-1>
		scale<.5,1,1>
	}
	//augen
	sphere { 0, .1
		texture { pigment { White }}
		scale<1.2,1,1>
		translate<-.35,15.3,-.85>
	}
	sphere { 0, .05
		texture { pigment { Blue }}
		translate<-.355,15.3,-.91>
		scale<1,1,1>
		}
	sphere { 0, .1
		texture { pigment { White }}
		scale<1.2,1,1>
		translate<.35,15.3,-.85>
	}
	sphere { 0, .05
		texture { pigment { Blue }}
		translate<.355,15.3, -.91>
	}
	//mund
	sphere { 0, .15
		texture { pigment { LIPPEN  }}
		translate<0,14.5,-.75>
		scale<2,1,1>		
	}
}

#declare koerper =
union {
	cone { <0,10,0> 1.5,  <0,14,0>, 2
    texture { pigment { White }}
    scale <1,1,.5>
}
cone { <0,8,0> 2, <0,10, 0>, 1.5
    texture { pigment { White }}
    scale<1,1,.5>
}
}
/*
camera {
    location <0,15,-10>
    look_at <0,15,0>
    angle 40
}
light_source { < 10,30,-30> color White }

object {
	kopf
}

*/
