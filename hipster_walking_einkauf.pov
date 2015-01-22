//#include "colors.inc"
#include "koerperteile.pov"
#include "einkaufskorb.pov"

/*
camera {
    location <0,20,-40>
    look_at <0,8,0>
    angle 40
}
light_source { < 10,30,-30> color White }
*/
#macro hipster_walking_einkauf(HEMD, UNTERARM, HOSE)
union {
    //head
  object {
    kopf
  }
  object {
    koerper
    pigment { HEMD }
  }
// body


//arms
union {
    //oberarm
    object {
    oberarm_rechts
    pigment { HEMD }
  }
    //unterarm
    object {
    unterarm
    pigment { UNTERARM }
    //rotate<20*sin(clock*2*pi),0,0>
        translate<0,-4,0>
  }
  object {
    einkaufskorb
    scale<.18,.2,.2>
    translate<-.4,-9.5,-1>
  }
    //rotate <15*sin( clock*2*pi),0,0>
    translate <-2.5,14,0>
}
union {
    //oberarm
    object {
    oberarm_links
    pigment { HEMD }
  }
    //unterarm
    object {
    unterarm
      pigment { UNTERARM }
        rotate<-20*sin (clock*2*pi),0,0>
        translate<0,-4,0>
    }
    rotate <-15*sin (clock*2*pi),0,0>
    translate <2.5,14,0>
}

//legs
union {
    //oberschenkel
    object {
    oberschenkel
  }
    //unterschenkel
    object {
    unterschenkel
        rotate <-20*sin( clock*2*pi),0,0>
        translate <0,-4,0>
    }
    pigment { HOSE }
    rotate <-20*sin( clock*2*pi),0,0>
    translate <-1,8,0>
}
union {
    //oberschenkel
    object {
    oberschenkel
  }
    //unterschenkel
    object {
    unterschenkel
        rotate<20*sin(clock*2*pi),0,0>
        translate<0,-4,0>
    }
    pigment { HOSE }
    rotate <20*sin(clock*2*pi),0,0>
    translate <1,8,0>
}
}
#end

/*

*/
