

mm2in = 25.4;

r1 = 0.57/2.0;
r2 = 0.5/2.0;
$fn = 300;

sectionDepth = 0.75;

scale (v = [mm2in, mm2in, mm2in] )
{
	union()
	{
		cylinder(sectionDepth, r = r1);
		translate(v = [0.0, 0.0, sectionDepth])
			cylinder(sectionDepth, r = r2);
	}
}