#include "world.pov"
#include "colors.inc"
#include "hipster.pov"

camera {
  location <0,30,-300>
  look_at <0,1,0>
  right x*image_width/image_height
  angle 75
}

light_source { <0, 500, -1000> color White }

text {
  ttf "Walkway.ttf",
  "HIPSTER",
  5,
  0
  texture { pigment { White }}
  scale <30,40,1>
  rotate <0,25,0>
  translate <-70,0,-200>

}
text {
  ttf "Walkway.ttf",
  "ANNO",
  5,
  0
  texture { pigment { White }}
  scale <15,20,.5>
  rotate <0,25,0>
  translate <-22,0,-250>
}


text {
  ttf "Walkway.ttf",
  "2420",
  5,
  0
  texture { pigment { White }}
  scale <7.5,10,.25>
  rotate <0,25,0>
  translate <0,0,-270>
}

#declare HEMD = color rgb<0,1,0>;
#declare LANGHEMD = color rgb<1,0.65,.5>;
#declare HOSE = color rgb<0,0	,1>;

object {
  hipster(HEMD, LANGHEMD, HOSE)
  scale<4,4,4>
  rotate<0,35,0>
  translate<30,0,-230>

}
