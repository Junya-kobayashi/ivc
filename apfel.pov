#include "colors.inc"
#include "textures.inc"
camera
{
	location <0,10,-50>
	look_at <0,0,0>
	right x*image_width/image_height // so wegen 16:9
	angle 90
}

light_source{<1500,3000,-2500> color White}

#declare apfel =
union
{
cylinder{<0,0,0>, <1,4,1>, 0.4
	texture{pigment{color Brown}}
	translate<0,5,0>
}
sphere{<0,0,0>, 1
   texture{
    pigment{
     // Projiziert ein Bild in die xy-Ebene
     // von <0,0,0> bis <1,1,0>
     // (Seitenverhältnis 1:1)
     image_map{ bmp "apfel.bmp"
     // Bildtyp "Bilddateiname" - Pfadname + Endung
     // erlaubte Bildtypen:
     // gif, tga, iff, ppm, pgm, png, jpeg, tiff, sys
     map_type 0 // 0=planar, 1=spherical, 2=cylindrical, 5=torus
     interpolate 2
      // 0=none, 1=linear, 2=bilinear, 4=normalized distance
     once // falls Bild nicht wiederholt werden soll.
      }} // end of image_map, end of pigment
    finish { diffuse 0.9 phong 1}// end of finish
     scale 2 translate<-1,-1,0>}
	scale 5 // end of texture
  translate<0.5,1.2,0>} // end of sphere  ------------------	
}

object{apfel}
