#declare hoverboard =
union {
  box {
    <-3,0,-1> <3,.3,1>
    pigment { color Pink }

  }
  cylinder { <3,.3,0>, <3,0,0>, 1
    pigment { color Pink }
  }
  box {
    <0,0,0> <1,.3,2>
    pigment { color Pink }
    rotate <0,0,-20>
    translate <-3.8,.3,-1>
  }
  translate <0,-.6,.5>
}
