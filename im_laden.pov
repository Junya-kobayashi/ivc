#include "colors.inc"
#include "textures.inc"
#include "supermarkt.pov"

camera{
  location <130,20,20>
  look_at <0,10,80>
  right x*image_width/image_height // so wegen 16:9
  angle 75
}

light_source { <10, 20, -20> color White }

object {
  supermarkt_komplett
}
