#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}

#declare bett =
//Bettgestell
object{
Round_Box(<0,0,0>, <45,10,12>, 0.5, 0)
 texture{
   	pigment{ color Brown}
   	finish { phong 1}
	}
translate<0,0,60>
 }

object
{
bett
}
