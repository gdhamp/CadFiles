outerDiameter = 1.265;
coneTopDiameter = 0.5;
innerLipDiameter = 1.128;
lipDepth = 0.10;
supportDepth = 0.1;
coneDepth = 0.25;
bigHoleDiameter = 0.4;
littleHoleDiameter = 0.25;

mmToInch = 25.4;
$fn=300;

scale (v = [mmToInch, mmToInch, mmToInch])
{
	union ()
	{
		difference()
		{
			union()
			{
				cylinder( lipDepth, r = innerLipDiameter/2);
				translate( v = [0.0, 0.0, lipDepth])
					cylinder(supportDepth, r = outerDiameter/2);
			}

			cylinder( lipDepth + supportDepth, r = littleHoleDiameter/2);
		}
		translate( v = [0.0, 0.0, lipDepth + supportDepth])
		{
			difference()
			{
				cylinder(coneDepth, outerDiameter/2, coneTopDiameter/2);
				cylinder(coneDepth + 0.1, r = bigHoleDiameter/2);
			}
		}
	}
}

