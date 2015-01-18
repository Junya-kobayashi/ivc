#declare Engine =
union{
cone{<0,0,0>,0.5,<0,1.5,0>,0.25
      scale<1,1,0.7>  translate<0,0.5,0>
      texture{Chrome_Metal}}
prism{ -0.01 ,0.01 , 4
      <0.0, 0.0>, < 0.8,  0.0>, < 0.0,1.5>, <0.0, 0.0>
      rotate<-90,0,0> translate<0,0.5,0>
      texture {pigment{ color White }
               finish { phong 1.0}}}
difference{
 cone{<0, 0.10,0>,0.28,<0,0.50,0>,0.10}
 cone{<0, 0.09,0>,0.17,<0,0.49,0>,0.09}
 translate<0.22,0,0> texture{Chrome_Metal}
 }// end of difference
translate<0.25,0,0>} // all together somewhat excentric!

//------------ build the rocket -------------------------------
#declare rakete =  union{  //-- 4 engines ---------------------
object{Engine rotate<0,  0,0> translate<0,0,0>}
object{Engine rotate<0, 90,0> translate<0,0,0>}
object{Engine rotate<0,180,0> translate<0,0,0>}
object{Engine rotate<0,270,0> translate<0,0,0>}
//----- the body ----------------------------------------------
cylinder {<0,0,0>,<0,5,0>,0.5 translate<0,0.5,0>
  texture {pigment{ color White}
           finish { phong 1.0}}}
// ----- with some details ------------------------------------
cylinder {<0,0,0>,<0,0.1,0>,0.505 translate<0,2.0,0>
          texture{Chrome_Metal}}
cylinder {<0,0,0>,<0,0.1,0>,0.505 translate<0,3.5,0>
          texture{Chrome_Metal}}
cylinder {<0,0,0>,<0,0.1,0>,0.505 translate<0,5.25,0>
          texture{Chrome_Metal}}
//------- the top part ----------------------------------------
cone{<0,0,0>,0.5,<0,1.5,0>,0.25 translate<0,5+0.5,0>
      texture{Chrome_Metal}}
//-------- the nose on top of the rocket ----------------------
sphere{<0,0,0>,0.25 scale <1,1.5,1>
       translate<0,5.00+1.50+0.50,0>
       texture{Chrome_Metal}}
}//--end of union ---------------------------------------------

