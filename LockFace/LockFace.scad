bot_r = 12;
top_r = 8;
height= 10;

angle = atan((bot_r - top_r)/height);

module LockFace()
{

	difference () {
		cylinder(h=height, r1=top_r, r2=bot_r, center = true, $fn=90);
		
		union() {	
		for 	(i = [10 : 10 : 360])
		{	
			rotate(a=[0,0,i])
				translate([(bot_r + top_r)/2, 0, 0])
					rotate(a=[0,angle,0])
						cylinder(h=height+1, r=0.90, center = true, $fn=30);
		}}
	}


}

module thePiece()
{
	difference()
	{
		difference()
		{
			cylinder(h=20, r=15, center=true, $fn=100);
			translate([0,0,5.1])
			LockFace();
		}
		translate([0,0,-7])
		cylinder(h=10, r=2.5, center=true, $fn=100);
	}
}

thePiece();