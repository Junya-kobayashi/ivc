#include "world.pov"
#include "supermarkt.pov"
#include "hipster_walking_einkauf.pov"
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
#declare HEMD = color rgb<0,1,0>;
#declare LANGHEMD = color rgb<1,0.65,.5>;
#declare HOSE = color rgb<0,0	,1>;

object {
  hipster_walking_einkauf(HEMD, LANGHEMD, HOSE)
  rotate<0,180,0>
  translate<45,0,0>
}
