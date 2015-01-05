// POV-Ray 3.6/3.7 Scene File "Minimal.pov"
// by Friedrich A. Lohmueller, Jan-2013
//-------------------------------------------
#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"

#include "hipster_wohnung.pov"
//------------------------------------------
// camera ----------------------------------

#declare camfahrt =
spline {
	linear_spline
	0.0 <40,50,-200>
	0.5 <0,10,-110>
	1.0 <0,10,-20>
}
#declare camlook = 
spline {
	linear_spline
	0.0 <0,1,0>
	0.5 <2,1,0>
	1.0 <4,10,-20>
}
camera{ location  camfahrt(clock)
        look_at   camlook(clock)
        right x*image_width/image_height
        angle 75 }
// sun -------------------------------------
light_source{<1500,3000,-2500> color White}
// sky -------------------------------------
plane{ <0,1,0>,1 hollow
       texture{
         pigment{ bozo turbulence 0.92
           color_map{
                 [0.00 rgb<0.05,0.15,0.45>]
                 [0.50 rgb<0.05,0.15,0.45>]
                 [0.70 rgb<1,1,1>        ]
                 [0.85 rgb<0.2,0.2,0.2>  ]
                 [1.00 rgb<0.5,0.5,0.5>  ]
                       } //
           scale<1,1,1.5>*2.5
           translate<0,0,0>
           } // end of pigment
         finish {ambient 1 diffuse 0}
        } // end of texture
       scale 10000}
// fog on the ground -----------------------
fog { fog_type   2
      distance   50
      color      rgb<1,1,1>*0.8
      fog_offset 0.1
      fog_alt    1.5
      turbulence 1.8
    } //
// ground ----------------------------------
plane{ <0,1,0>, 0
       texture{
          pigment{ color rgb<0.22,0.45,0>}
          normal { bumps 0.75 scale 0.015 }
          finish { phong 0.1 }
       } // end of texture
     } // end of plane
//------------------------------------------

object {
	wohnung
	rotate<0,-180,0>
	scale <0.6,0.6,0.6>
	translate<50,0,0>
}

#include "House_1_0.inc"

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

#declare Window_Texture = 
         texture{ pigment{ color rgb< 0.75, 0.5, 0.30>*0.35 } // brown  
                  // pigment{ color White*1.2}
                  finish { phong 0.1}}

object{ House_1_0(  2.50, // Half_House_Width_X, // >= 2.00
                    5.50, // Total_House_Width_Z,// >= 2.00
                    3.50, // House_Height_Y,     // >= 2.00
                    25,   // Roof___Angle, // ca. 10 ~ 60 degrees
                      
                    Wall_Texture_Outside
                    Wall_Texture_Inside 
                    Window_Texture                                                    
                    Roof_Texture
                   ) //----------------------------------------------------------------//
        scale <1,1,1>*9
        rotate<0,-90,0>
        translate<-20, 0, -60>
         
        }
        
        #include "House_2_0.inc" 
//-------------------------------------------------------------------------------------// 
object{ House_2_0(  2.50, // Half_House_Width_X, // >= 2.00
                    5.50, // Total_House_Width_Z,// >= 2.00
                    5.00, // House_Height_Y,     // >= 2.00
                    45,   // Roof___Angle, // ca. 10 ~ 60 degrees
                      
                    Wall_Texture_Outside
                    Wall_Texture_Inside 
                    Window_Texture                                                    
                    Roof_Texture
                   ) //----------------------------------------------------------------//
        scale <1,1,1>*9
        rotate<0,-90,0> 
        translate<-20.00,0.00, 10.00>}


#include "povtree/linden.inc"


#include "povtree/TOMTREE-1.5.inc"
//-------------------------------------------------------------
#declare Tree_01 = object{ TREE double_illuminate hollow}
//-------------------------------------------------------------
#declare i = 2;
#while (i < 7)
object{ Tree_01 
        scale  40
        rotate<0, 0,0>
        translate<30, 0.00,-20*i>
}
object { Tree_01
	scale 30
	rotate<0,90*i,0>
	translate<20,0,-25*i>
}
#declare i = i+1;
#end



#declare Wall_Texture_Outside = 
      texture { pigment{ color rgb< 1, 0.78, 0.58>*0.70}               
                normal { pigment_pattern{ gradient y  scallop_wave 
                                           color_map {[0, rgb 0.8]
                                                      [0.975, rgb 0.8]
                                                      [1, rgb 0.2]}
                                           scale 0.10}
                         0.3 translate<0,-0.16,0>}
                finish { phong 0.1}
              } // end of texture
//--------------------------------------------------------                                 
#declare Wall_Texture_Inside = 
      texture { pigment{ color White*1.0}
                finish { phong 1}
              } // end of texture
//--------------------------------------------------------
#declare Roof_Texture = 
// layered texture!!!
      texture { pigment{ color rgb<1,1,1>*0.65} //Scarlet*1.3
                normal { gradient z scallop_wave scale<1,1,0.10>} 
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
         texture{ pigment{ color White*1.2}
                  finish { phong 0.1}}
//--------------------------------------------------------
#declare Base_Texture = // texture{Wall_Texture_Outside}
         texture{ pigment{ color rgb< 0.75, 0.65, 0.60>*1.0}
                  normal { bumps 0.5 scale 0.005 }
                  finish { phong 0.0}}
//----------------------------------------------------------------------------------------
#//---------------------------------------------------------------------------------------
#include "House_35_0.inc" 
//-------------------------------------------------------------------------------------// 
object{ House_35_0( 2.30 , // Half_House_Width_X, // >= 2.00
                    5.50 , // Total_House_Width_Z,// >= 2.00
                    3.20 , // House_Height_Y,     // >= 2.00
                    20   , // Roof___Angle, // ca. 10 ~ 60 degrees
                    // door and windows open/closed  
                    0.7, //Window_Open_Frontside_1, left: 0=closed  ~ 1=open 
                    0.3, //Window_Open_Frontside_2,right: 0=closed  ~ 1=open 
                    0.2, //Window_Open_Backside_1,  left: 0=closed  ~ 1=open 
                    0.0, //Window_Open_Backside_2, right: 0=closed  ~ 1=open 
                    0.0, //Window_Open_RightSide_1, back: 0=closed  ~ 1=open 
                    0.2, //Door_Open_Rightside_1, middle: 0=closed  ~ 1=open 
                    0.6, //Window_Open_RightSide_2,front: 0=closed  ~ 1=open 
                    0.3, //Window_Open_LeftSide_1,  back: 0=closed  ~ 1=open 
                    1.0, //Window_Open_LeftSide_2,middle: 0=closed  ~ 1=open 
                    1.0, //Window_Open_LeftSide_3, front: 0=closed  ~ 1=open 
                    // textures  
                    Wall_Texture_Outside ,
                    Wall_Texture_Inside  , 
                    Window_Texture       ,
                    Roof_Texture, 
                    Base_Texture
                   ) //----------------------------------------------------------------//
        scale <1,1,1>*8
        rotate<0,0,0> 
        translate<-35.00,0.00, -150.00>}
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------




#include "Street_10.inc"
object{ Street_10( 20,     // Street_Widthm, // 
                   1000 , // Street_Length, //
                   1,  // Stripes_Width, // 
                   2.00,  // Stripes_Length                                  
                 ) //------------------------------------------------------------------//
        scale <1,1,1>*1
        rotate<0,0,0> 
        translate<0,0.00, -200.00>
        }
object {
	Street_10( 20,
				1000,
				1,
				2
				)
	scale<1,1,1>
	rotate<0,90,0>
	translate<-500,0,60>
}
