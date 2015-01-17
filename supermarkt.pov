#version 3.7;
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}
//------------------------------------------
#include "colors.inc"
#include "textures.inc"
#include "shapes.inc"

camera
{
	//location <130,20,20>
	//look_at <0,10,80>
	location <80,20,40>
	look_at <20,10,80>
	//location  <50,50,-80>
	//look_at <50,10,80>
	right x*image_width/image_height // so wegen 16:9
	angle 90
}

#declare Tube_Length = 10;
#declare Tube_End = 20;
#declare Tube =

union{
	cylinder{ < 0,0,0>,<Tube_End,0,0>, 0.025
		texture { Chrome_Metal }
		translate <0,0,0>
	} // end of cylinder  ------------------------------------
	cylinder{ <-Tube_End,0,0>,<0.00,0,0>, 0.025
		texture { Chrome_Metal }
		translate <Tube_Length,0,0>
	} // end of cylinder  ------------------------------------
	cylinder{ <Tube_End,0,0>,<Tube_Length-Tube_End,0,0>, 0.3
		texture { pigment { color rgb<1,1,1>}
		finish  { ambient 0.8 diffuse 0.2 phong 1 reflection 0.25 }
	} // end of texture
}
}

light_source{<100,200,30> color White}

#declare licht =
light_source{ <0,0,0>
	color rgb<1,1,1>
	area_light
	<0, 0, 0> <2, 0, 0>
	1,10 // numbers in directions
	adaptive 0  // 0,1,2,3...
	jitter // random softening
	looks_like{
		object{ Tube rotate<0,90,0> }
	}
	translate<0,1,0>
}

#declare Window_Glass =
texture{
	pigment{ rgbf<0.98,0.98,0.98,0.8>}
	finish { diffuse 0.1
		reflection 0.2
		specular 0.8
		roughness 0.0003
		phong 1
		phong_size 400}
	}

	#declare obststand =
	union
{
	object
{
	box{<0,0,0>, <15,1,80> pigment{color White} rotate <0,0,320> translate <0,13,5>
	texture{ pigment { image_map
	{
		bmp "obst.bmp"
		map_type 0 //type für plane/box
		//once //gif wird in der Fläche nicht wiederholt
	}
	scale<0.02,0,0.025>
}
}}
}
object
{
	box{<0,0,0>, <15,5,75> pigment{color White} translate <0,25,5>}
}
object
{
	box{<0,0,0>, <15,1,75> texture{Silver_Metal} rotate <0,0,40> translate <0,15,5>}
}
box{<0,0,0>, <15,5,75> pigment{color White} translate <0,0,5>}
}

#declare kasse =
union
{
	box{<0,0,0>, <50,10,8> pigment{color White}}
	box{<0,0,0>, <45,0.01,6> pigment{color Black} translate <2.5,10,1>}
	box{<0,9,0>, <10,10,10> pigment{color White} translate <0,0,-10>}
	box{<0,0,0>, <1,10,10> pigment{color White} translate <0,0,-10>}
}

//-------------------------------------------------------------------- optional texture
/*
#declare Railing_Texture_1 =
texture { Chrome_Metal
// pigment{ color rgb< 1, 1, 1>*0.7 }
normal { bumps 0.25 scale 0.35 }
finish { phong 0.3 }
} // end of texture
*/
//---------------------------------------------------------------------------------------
#include "Railing_1.inc"
//-------------------------------------------------------------------------------------//
object{ Railing_1( 4.00,  // railing length in x // i.e. 5.00,
	0.90,  // railing height in y // i.e. 1.00,
	0.80,  // railing vertical ~distance // i.e. 1.00,
	0.025, // railing main radius   // i.e. 0.025,
	4, // vertical subdivision  // integer, i.e. 0, 1, 2, ...
	) //------------------------------------------------------------------//
	scale <5,12,15>
	rotate<0,90,0>
	translate<35,0, 20>}
	//---------------------------------------------------------------------------------------
	object{ Railing_1( 4.00,  // railing length in x // i.e. 5.00,
		0.90,  // railing height in y // i.e. 1.00,
		0.80,  // railing vertical ~distance // i.e. 1.00,
		0.025, // railing main radius   // i.e. 0.025,
		4, // vertical subdivision  // integer, i.e. 0, 1, 2, ...
		) //------------------------------------------------------------------//
		scale <5,12,15>
		rotate<0,0,0>
		translate<50,0, 18>}
		//---------------------------------------------------------------------------------------


		#declare drehkreuz =
		union
	{

	}

	#declare schrank_mitte =
	box{<0,0,0>, <40,10,20> pigment{color White}}

	#declare X = 10;
	#declare Y = 10;
	#declare Z = 10;

	#declare kaesestand =
	union
{

}

#declare Tuer =
union
{
	difference
{
	object
{
	box {<0,0,0>, <11,26,0.5> pigment{color Black}}
	translate<1,1,-0.5>
}
object
{
	box {<0,0,0>, <10,25,1> texture{Window_Glass}}
	translate<1.5,1.5,-0.5>
}
}
}


//--------------------------------------------------------------------------------------
//--------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------
#declare Glass_D         = 0.002;
#declare Base_Height     = 0.25;
#declare Base_Half_Width = 0.12;
#declare Neck_Length     = 0.05;
#declare Neck_Radius     = 0.03;
#declare Fillet_Radius   = 0.10;
#declare Base_Border_Radius = 0.025;
//-------------------------------------------------------------------------------------//
#include "Erlenmeyer_Flask_1.inc"
//-------------------------------------------------------------------------------------//
#declare Flasche =
object{ Erlenmeyer_Flask_1(  Glass_D, //
	Base_Height, // Base_H, //
	Base_Half_Width, // Base_Half_Width, //
	Neck_Length, // Neck_Len, //

	Neck_Radius, // Neck_R, //
	Fillet_Radius, // Fillet_R, //
	Base_Border_Radius, // Base_Border_R,//

	1, // Merge_On, // 1 for transparent materials
	) //-------------------------

	material{   //-----------------------------------------------------------
		texture { pigment{ rgbf <0.5, 0.98, 0.98, 0.9> }
		normal { bumps 0.15 scale 0.03}
		finish { diffuse 0.1 reflection 0.2
			specular 0.8 roughness 0.0003 phong 1 phong_size 400}
		} // end of texture -------------------------------------------
		interior{ ior 1.5 caustics 0.5
		} // end of interior ------------------------------------------
	} // end of material ----------------------------------------------------


	scale <1,1,1>*10
	rotate<0,0,0>
	translate<0.00,0.0001, 0.00>}
	//---------------------------------------------------------------------------------------
	//---------------------------------------------------------------------------------------

	#declare Flaschenreihe =
	union
{
	object
{
	Flasche
	translate<3,2,2.5>
}
object
{
	Flasche
	translate<6,2,2.5>
}
object
{
	Flasche
	translate<9,2,2.5>
}
}

#declare schrank =
union
{
	difference
{
	object
{
	box {<0,0,0>, <12,27,5> pigment{color White}}
}
object
{
	box {<0,0,0>, <10,7,5> pigment{color White}}
	translate<2,2,-1>
}
object
{
	box {<0,0,0>, <10,7,5> pigment{color White}}
	translate<2,10,-1>
}
object
{
	box {<0,0,0>, <10,7,5> pigment{color White}}
	translate<2,18,-1>
}
}
//FASCHEN
object
{
	Flaschenreihe
}
object
{
	Flaschenreihe
	translate<0,8,0>
}
object
{
	Flaschenreihe
	translate<0,16,0>
}

Tuer
}

#declare fronttuer =
union
{
	object
{
	Tuer scale<0.65,1,1> translate<35.3,-1,-25>
}
object
{
	Tuer scale<0.65,1,1> translate<42.3,-1,-25>
}
object
{
	Tuer scale<0.65,1,1> translate<49.3,-1,-25>
}
object
{
	Tuer scale<0.65,1,1> translate<56.3,-1,-25>
}
}

#declare schrankmodul =
//LAENGE 2 x 12
union
{
	object
{
	schrank
	translate<15,0,80>
}
object
{
	schrank
	translate<27,0,80>
}
}

#declare supermarkt =
//Traeger
box{<0,0,0>, <15,30,5> pigment{ color White }}
box{<0,0,0>, <15,30,5> pigment{ color White } translate<0,0,80>}
difference
{
	object
{
	box
{<0,0,0>, <150,30,90>
	pigment{ color White }
}
}
object
{
	box
{<0,0,0>, <28,26,32>
	translate<36,0.1,-31>
	pigment{ color White }
}
}
object
{
	box
{<0,0,0>, <28,26,32>
	translate<36,0.1,-31>
	pigment{ color White }
}
}
}
difference
{
	object
{
	box
{<0,0,0>, <30,28,25>
	translate<35,0,-25>
	pigment{ color White }
}
}
object
{
	box
{<0,0,0>, <28,26,27>
	translate<36,-1,-25>
	pigment{ color White }
}
}
object
{
	box
{<0,0,0>, <28,26,27>
	translate<36,-1,-26>
	pigment{ color White }
}
}
}

object {fronttuer}

//Parkplatz
box
{<0,0,0>, <80,0,23>
	translate<68,0.1,-25>
	pigment{ color White }
}


object
{
	supermarkt
}

object
{
	union
{
	//	object{licht translate<10,26,40>}
	//	object{licht translate<30,26,40>}
	//	object{licht translate<50,26,40>}
	object{licht translate<70,26,40>}
	//	object{licht translate<90,26,40>}
	//	object{licht translate<110,26,40>}
	//	object{licht translate<130,26,40>}
}
}

object
{
	obststand
}

object
{
	kaesestand
	translate<80,0,50>
}

object
{
	schrankmodul
}
object
{
	schrankmodul
	translate<24,0,0>
}
object
{
	schrankmodul
	translate<48,0,0>
}
object
{
	schrankmodul
	translate<72,0,0>
}

object
{
	kasse
	translate<70,0,10>
}
object
{
	kasse
	translate<80,0,35>
}

object
{
	drehkreuz
}

/*
object
{
schrank_mitte
translate<50,0,25>
}
*/