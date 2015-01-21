#include "colors.inc"
#include "textures.inc"
#include "supermarkt.pov"
#include "hipster.pov"
#include "rand.inc"

camera{
  location <40,20,45>
  look_at <130,20,45>
  right x*image_width/image_height // so wegen 16:9
  angle 75
}

light_source { <10, 20, -20> color White }

object {
  supermarkt_komplett
}

#declare random1 = seed (255);
#local Nr1 = 0;

#while (Nr1< 40)

#declare HEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare LANGHEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare HOSE = color rgb<rand(random1),rand(random1),rand(random1)>;

object {
hipster(HEMD, LANGHEMD, HOSE)
rotate<0,45,0>
translate<80+Nr1,0,21>
}

#local Nr1 = Nr1 + 5;  // next Nr

#end

#local Nr2 = 0;

#while (Nr2 < 35)

#declare HEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare LANGHEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare HOSE = color rgb<rand(random1),rand(random1),rand(random1)>;

object {
hipster(HEMD, LANGHEMD, HOSE)
rotate<0,45,0>
translate<80+Nr2,0,46>
}

#local Nr2 = Nr2 + 5;  // next Nr

#end
