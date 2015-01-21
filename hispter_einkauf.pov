#include "koerperteile.pov"
#include "einkaufskorb.pov"
/*camera {
    location <30,30,-30>
    look_at <0,8,0>
    angle 40
}
light_source { < 10,30,-30> color White }
*/


#macro hipster_einkauf (HEMD, UNTERARM, HOSE)

union {
    //head
  object {
    kopf
  }
  object {
    koerper
  }
  // rechter arm
  union {
    object {
      oberarm_rechts
      pigment { HEMD }
    }
    object {
      unterarm
      pigment { UNTERARM }
      translate<0,-4,0>
    }
    translate <-2.5,14,0>
    }
    // linker arm
    union {
    object {
      oberarm_links
      pigment { HEMD }
    }
    object {
      unterarm
      pigment { UNTERARM }
      translate<0,-4,0>
    }
    object {
      einkaufskorb
      scale<.18,.2,.2>
      translate<-.4,-9.5,-1>
    }
    translate <2.5,14,0>
  }
  // rechts bein
  union {
    object {
      oberschenkel
    }
    object {
      unterschenkel
      translate<0,-4,0>
    }
    pigment { HOSE }
    translate <-1,8,0>
  }
  // linkes bein
  union {
    object {
      oberschenkel
    }
    object {
      unterschenkel
      translate<0,-4,0>
    }
    pigment { HOSE }
    translate <1,8,0>
  }
}
#end
