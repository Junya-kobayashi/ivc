//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

#include "hipster_wohnung.pov"


#declare Wall_Texture_Outside =
      texture { pigment{ color White*1.1}
                normal { bumps 0.5 scale 0.005}
                finish { phong 1}
              } // end of texture
//--------------------------------------------------------
#declare Wall_Texture_Inside =
      texture { pigment{ color White*1.1}
                finish { phong 1}
              } // end of texture
//--------------------------------------------------------
#declare Roof_Texture =
// layered texture!!!
      texture { pigment{ color Scarlet*1.3}
                normal { gradient z scallop_wave scale<1,1,0.15>}
                finish { phong 1}
              } // end of texture

      texture { pigment{ gradient x
                         color_map{[0.00 color Clear]
                                   [0.90 color Clear]
                                   [0.95 color White*0.1]
                                   [1.00 color White*0.1]}
                          scale 0.25}
                 finish { phong 1}
              } // end of texture

//--------------------------------------------------------
#declare Window_Texture =
         texture{ pigment{ color rgb< 0.75, 0.5, 0.30>*0.35 } // brown
                  // pigment{ color White*1.2}
                  finish { phong 0.1}}
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#include "House_1_0.inc"
//-------------------------------------------------------------------------------------//

#declare wohnung =

union {
object{ wohnung }

object{ House_1_0(  2.50, // Half_House_Width_X, // >= 2.00
                    5.00, // Total_House_Width_Z,// >= 2.00
                    4.50, // House_Height_Y,     // >= 2.00
                    30,   // Roof___Angle, // ca. 10 ~ 60 degrees

                    Wall_Texture_Outside
                    Wall_Texture_Inside
                    Window_Texture
                    Roof_Texture
                   ) //----------------------------------------------------------------//
        scale <13,15,11>
        rotate<0,-90,0>
        translate<52.50,-4.50, 25.00>}
}
