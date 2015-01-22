#include "world.pov"
#include "supermarkt.pov"
#include "hipster_walking_einkauf.pov"
#include "hipster_einnkauf.pov"
#include "rand.inc"

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
hipster_einnkauf(HEMD, LANGHEMD, HOSE)
rotate<0,45,0>
translate<80+Nr2,0,46>
}

#local Nr2 = Nr2 + 5;  // next Nr

#end
