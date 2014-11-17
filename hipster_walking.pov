#include "colors.inc"
camera {
    location <40,40,-80>
    look_at <0,0,0>
    angle 40
}
light_source { < 10,30,-30> color White}
#declare hipster = 
union {
    //head
sphere { 0, 1
    texture { pigment { White } }
    translate<0,15,0> 
    scale<1,1,1>
}

// body
cone { <0,10,0> 1.5,  <0,14,0>, 2
    texture { pigment { White }}
    scale <1,1,.5>
}
cone { <0,8,0> 2, <0,10, 0>, 1.5
    texture { pigment { White }}
    scale<1,1,.5>
}

//arms
union {
    //oberarm
    cone { 
        //<-2.5,10,0>, .5, <-1.5,14,0> .5
        <0,-4,0>, .5, <1,0,0>, .5
        texture { pigment { White }}
    }
    //unterarm
    cone { 
        //<-2.5,7,0>, .4, <-2.5,10,0> .5
        <0,-7,0>, .4, <0,-4,0>, .5
        texture { pigment { White }}
    }
    rotate <20*sin( clock*2*pi),0,0>
    translate <-2.5,14,0>
}
union {
    cone { 
        <0,-4,0>, .5, <-1,0,0> .5
        texture { pigment { White }}
    }
    cone { 
        <0,-7,0>, .4, <0, -4, 0> .5
        texture { pigment { White }}
    }
    rotate <-20*sin (clock*2*pi),0,0>
    translate <2.5,14,0>
}

//legs
union {
    cone { 
        //<-1,4,0>, .6, <-1,8,0> .75
        <0,-4,0>, .6, <0,0,0> .75
        texture { pigment { White }}
    }
    cone { 
        //<-1,0,0>, .4, <-1,4,0> .6
        <0,-8,0>, .4, <0,-4,0>, .6
        texture { pigment { White }}
    }
    difference {
        sphere {
            //<-1,0,-.3>, .5
            <0,-8,-.3>, .5
            texture { pigment { White }}
            scale< 1,1,2>
        }   
        box {
            <-1,-8,-2>, <1,-9,1>
            texture { pigment { White }}
        }
    }
    rotate <-20*sin( clock*2*pi),0,0>
    translate <-1,8,0>
}
union {
    cone {
        <0,-4,0>, .6, <0,0,0>, .75
        texture { pigment { White }}
    }
    cone {
        <0,-8,0>, .4, <0,-4,0> .6
        texture { pigment { White }}
    }
    difference {
        sphere {
            <0,-8,-.3>, .5
            texture { pigment { White }}
            scale<1,1,2>
        }
        box {
            <-1,-8,-2>, <1,-9,1>
            texture { pigment { White }}
        }
    }
    rotate <20*sin(clock*2*pi),0,0>
    translate <1,8,0>
}
}
object { 
    hipster
    translate<0,0,clock*-10>
}
