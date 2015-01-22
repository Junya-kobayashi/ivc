#include "world.pov"
#include "supermarkt.pov"
#//include "hipster_walking_einkauf.pov"
#include "hipster_einkauf.pov"
#include "hipster.pov"
#include "hoverboard.pov"
#include "rand.inc"
#include "apfel.pov"
#include "milch.pov"

#declare cam_location =
spline {
  natural_spline
  0.0 <110,20,40>
  1.0 <60,20,50>
  1.5 <85,20,60>  
  2.0 <110,20,40>
}

#declare cam_look_at =
spline {
  linear_spline
  0.0 <120,10,60>
}

#declare hipster_move =
spline {
  linear_spline
  0.0 <115,0,47.5>
}


#declare hipster_rotate =
spline {
  linear_spline
  0.0 <0,450,0>
}

#declare hipster2_move =
spline {
  linear_spline
  0.0 <112,2,52.5>
}
#declare hipster2_rotate =
spline {
  linear_spline
  0.0 <0,-45,0>
}


camera{
  location cam_location(clock)
  look_at cam_look_at(clock)
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

union {
  object {
    hipster_einkauf(HEMD, LANGHEMD, HOSE)
  }

    object {
      apfel
      scale<.1,.1,.1>
      translate<3,5,0>
    }
    object {
      milch
      scale<.2,.2,.2>
      translate<3,5,-2>
    }

  rotate hipster_rotate(clock)
  translate hipster_move(clock)

}

#declare HEMD = color rgb<0,0,0>;
#declare LANGHEMD = color rgb<0,0,0>;
#declare HOSE = color rgb<1,0,1>;

union {
  object {
    hipster(HEMD, LANGHEMD, HOSE)
  }
  object {
    hoverboard
  }
  rotate hipster2_rotate(clock)
  translate hipster2_move(clock)
}




// schlange an der kasse
#declare random1 = seed (255);
#local Nr1 = 0;

#while (Nr1< 40)

#declare HEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare LANGHEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare HOSE = color rgb<rand(random1),rand(random1),rand(random1)>;

object {
hipster_einkauf(HEMD, LANGHEMD, HOSE)
rotate<0,45,0>
translate<80+Nr1,0,22.5>
}

#local Nr1 = Nr1 + 5;  // next Nr

#end

#local Nr2 = 0;

#while (Nr2 < 35)

#declare HEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare LANGHEMD = color rgb<rand(random1),rand(random1),rand(random1)>;
#declare HOSE = color rgb<rand(random1),rand(random1),rand(random1)>;

object {
hipster_einkauf(HEMD, LANGHEMD, HOSE)
rotate<0,45,0>
translate<80+Nr2,0,47.5>
}

#local Nr2 = Nr2 + 5;  // next Nr

#end
