$fn=50;
module lemon(dia)
{
	difference ()
	{
		rotate_extrude(convexity = 10)
			translate([-.4, 0, 0])

				difference()
				{
					circle(r = dia);

					translate([-1.6,-1,0])
						square(2);
				}
	}
}


module thinLemon()
{
	difference()
	{
		lemon(1);
		lemon(0.95);
		translate([0,-1,-1])
			cube(2);
	}
}

module moonBar()
{
	difference()
	{
		blah();

		rotate([0,-90,0])
		scale([0.15, 0.15, 1])
		difference()
		{
			cylinder(h=3, r=2, $fn=50);
			translate([0.8,0,0])
				cylinder(h=3, r=2, $fn=50);
		}
	}
}


module moonPiece()
{
	intersection()
	{
		thinLemon();
		moonBar();
	}
}

module ThirdEye()
{	
	difference()
	{
		thinLemon();
		translate([-0.05, 0, 0])
			//moonPiece();
			moonBar();
	}
}

rotate([0,90,0])
	ThirdEye();
//moonPiece();
//thinLemon();

