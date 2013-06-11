outerDiameter = 1.265;
innerLipDiameter = 1.128;
lipDepth = 0.10;
supportDepth = 0.1;
coneDepth = 0.4;
bigHoleDiameter = 0.35;
littleHoleDiameter = 0.23;

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
				cylinder(coneDepth, outerDiameter/2, bigHoleDiameter/2);
				cylinder(coneDepth + 0.1, r = bigHoleDiameter/2);
			}
		}
	}
}

