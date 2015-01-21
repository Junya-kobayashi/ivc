#include "colors.inc"

camera{
  location  <0 ,30, -30>
  look_at   <0 , 0 ,0>
  right x*image_width/image_height // so wegen 16:9
  angle 75
}

light_source { <0, 20, -20> color White }

#declare einkaufskorb =
union {
  difference {
    box {
      <0,0,0> <12,10,20>
      texture { pigment { color Blue } }
    }
    box {
      <.5,.5,.5> <11.5,11,19.5>
      texture { pigment { color Blue } }
    }
    #local i = 1;
    #while (i < 8)
      #local j = 1;
      #while (j < 6)
        box {
          <0,0,0> <1,1,40>
          texture { pigment { color Blue } }
          rotate<0,0,45>
          translate<1.5*i,1.5*j,-10>
        }
        #local j = j + 1;
      #end
    #local i = i +1;
    #end

    #local i = 1;
    #while (i < 12)
    #local j = 1;
    #while (j < 6)
    box {
      <0,0,0> <20,1,1>
      texture { pigment { color Blue } }
      rotate<45,0,0>
      translate<-5,1.5*j,1.5*i>
    }
    #local j = j + 1;
    #end
    #local i = i +1;
    #end
  }

  box {
    <0,0,0> <.2,7,1>
    texture { pigment { color Black } }
    translate<-.2,9,9.5>
  }
  box {
    <0,0,0> <12.4,.2,1>
    texture { pigment { color Black } }
    translate<0,15.8,9.5>
  }
  box {
    <0,0,0> <.2,7,1>
    texture { pigment { color Black } }
    translate<12.2,9,9.5>
  }

  translate<-6,0,-10>
}
