//#include "colors.inc"

/*
camera{
  location  <0 ,10, -10>
  look_at   <0 , 0 ,0>
  right x*image_width/image_height // so wegen 16:9
  angle 75
}

light_source { <0, 20, -20> color White }
*/

#local bug_color = pigment { color Black }
#declare bug =
union {
  difference {
    union {
      sphere {
        <0,0,0> 1
        texture { bug_color }
        scale <3,1,1>
      }
      sphere {
        <0,0,0> 1
        texture { bug_color }
        translate<-2,0,0>
      }
    }
    box {
      <-10,0,-10> <10,-10,10>
      texture { bug_color }
    }
  }
  sphere {
    <0,0,0> 0.2
    texture { bug_color }
    scale<8,1,1>
    rotate<0,110,0>
    translate<-1.5,0,-1.5>
  }
  sphere {
    <0,0,0> 0.2
    texture { bug_color }
    scale<8,1,1>
    rotate<0,60,0>
    translate<-1.5,0,1.5>
  }
  sphere {
    <0,0,0> 0.2
    texture { bug_color }
    scale<6,1,1>
    rotate<0,40,0>
    translate<0.5,0,-1.5>
  }
  sphere {
    <0,0,0> 0.2
    texture { bug_color }
    scale<6,1,1>
    rotate<0,130,0>
    translate<0.5,0,1.5>
  }
  sphere {
    <0,0,0> 0.2
    texture { bug_color }
    scale<5,1,1>
    rotate<0,40,0>
    translate<1.8,0,-1.3>
  }
  sphere {
    <0,0,0> 0.2
    texture { bug_color }
    scale<6,1,1>
    rotate<0,130,0>
    translate<1.8,0,1.3>
  }
  sphere {
    <0,0,0> 0.1
    texture { bug_color }
    scale<9,1,1>
    rotate<0,140,-40>
    translate<-3,.5,-1>
  }
  sphere {
    <0,0,0> 0.1
    texture { bug_color }
    scale<9,1,1>
    rotate<0,40,-40>
    translate<-3,.5,1>
  }
}
