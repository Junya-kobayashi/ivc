#include "colors.inc"

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
cone { <-2.5,10,0>, .5, <-1.5,14,0> .5
    texture { pigment { White }}
}
cone { <-2.5,7,0>, .4, <-2.5,10,0> .5
    texture { pigment { White }}
}
cone { <2.5,10,0>, .5, <1.5,14,0> .5
    texture { pigment { White }}
}
cone { <2.5,7,0>, .4, <2.5, 10, 0> .5
    texture { pigment { White }}
}

//legs
cone { <-1,4,0>, .6, <-1,8,0> .75
    texture { pigment { White }}
 //   scale<1,1,.5>
}
cone { <-1,0,0>, .4, <-1,4,0> .6
    texture { pigment { White }}
}

cone {<1,4,0>, .6, <1,8,0>, .75
    texture { pigment { White }}
}
cone {<1,0,0>, .4, <1,4,0> .6
    texture { pigment { White }}
}

// foots
difference {
sphere {<-1,0,-.3>, .5
    texture { pigment { White }}
    scale< 1,1,2>
}
box {<-2,0,-2>, <0,-5,1>
    texture { pigment { White }}
}
}
difference {
sphere {<1,0,-.3>, .5
    texture { pigment { White }}
    scale<1,1,2>
}

box {<0,0,-2>, <2,-5,1>
    texture { pigment { White }}
}
}
}

object { hipster }
