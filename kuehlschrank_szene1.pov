#include "kuehlschrank.pov"
#include "bug.pov"


camera{
  location  <7 ,15, -4>
  look_at   <6 , 12 ,0>
  right x*image_width/image_height // so wegen 16:9
  angle 70
}

light_source { <10, 20, -20> color White }

object {
  kuehlschrank
}
/*
object {
  bug
  rotate<0,-40,0>
  scale<0.5,.5,.5>
  translate<6,11,3>
}*/
