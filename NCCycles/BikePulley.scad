outerDiameter = 1.265;
coneTopDiameter = 0.5;
innerLipDiameter = 1.09;
lipDepth = 0.15;
supportDepth = 0.1;
coneDepth = 0.16;
bigHoleDiameter = 0.4;
littleHoleDiameter = 0.25;

mmToInch = 25.4;
$fn=30;

scale (v = [mmToInch, mmToInch, mmToInch])
{
	union ()
	{
		difference()
		{
				cylinder( lipDepth, r = innerLipDiameter/2);

			cylinder( lipDepth +.01, r = littleHoleDiameter/2);
		}
		translate( v = [0.0, 0.0, lipDepth])
		{
			difference()
			{
			union()
			{
				cylinder(supportDepth, r = outerDiameter/2);
				translate( v = [0.0, 0.0, supportDepth])
					cylinder(coneDepth, outerDiameter/2, coneTopDiameter/2);
			}
				cylinder(coneDepth + supportDepth + 0.01, r = bigHoleDiameter/2);
			}
		}
	}
}

