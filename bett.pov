#version 3.6; // 3.7
global_settings{assumed_gamma 1.0}
#default{ finish{ ambient 0.1 diffuse 0.9 }}

#declare bett =
union
{
//Bettgestell
object{
Wire_Box(<0,0,0>, <14,3.5,18>, 0.5, 0)
 texture{
   	pigment{ color Brown}
   	finish { phong 1}
	}
 }

//Bett
object{
Round_Box(<0,0,0>, <13,4,17>, 0.5, 0)
 texture{
   	pigment{ color White}
   	finish { phong 1}
	}
translate<0.5,0,0.5>
}
}

