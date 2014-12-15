#include "shapes.inc"
#include "colors.inc"
global_settings { charset utf8 }

camera {
    location <0,10,-40>
    look_at <0,10,-10>
    angle 70
}
light_source { <100,300,-300> color White }

object {
    Bevelled_Text (
        "Walkway.ttf",
        "Hipster anno 2420",
        10,
        35,
        0.045,
        1,
        0.00,
        0)
        texture {
            pigment { color rgb<1,0.7,0> }
            normal { bumps 0.5 scale 0.005 }
            finish { ambient 0.1 diffuse 0.75 phong 1 }
        }
        scale <10,10,10>
        translate <-20, 10,-10>
        rotate <0,clock*180,0>
}
object {
    Bevelled_Text (
        "Walkway.ttf",
        "In FullHD 60fps (digga)",
        10,
        35,
        0.045,
        1,
        0.00,
        0)
        texture {
            pigment { color rgb<1,0.7,0> }
            normal { bumps 0.5 scale 0.005 }
            finish { ambient 0.1 diffuse 0.75 phong 1 }
        }
        scale <10,10,10>
        translate <0,0,-10>
        rotate <0,clock*180,0>
    }
