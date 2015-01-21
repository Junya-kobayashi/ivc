#include "world.pov"
#include "supermarkt.pov"

camera{
  location <50,20,30>
  look_at <40,10,0>
  right x*image_width/image_height // so wegen 16:9
  angle 90
}

//light_source { <10, 20, -20> color White }

object {
  supermarkt_komplett
}
