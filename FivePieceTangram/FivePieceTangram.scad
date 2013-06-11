
space = 0.25;
gheight = 0.75;
root2 = sqrt(2.0);

module FivePieceTangram()
{
	linear_extrude(height = gheight, center = true, convexity = 10, twist = 0)
	{
		translate([-2,-2,0])
		{
			// Square
			assign(dx = 0 * space, dy = 0 * space)
				polygon([	[0+dx, 0+dy],
						[0+dx, 1+dy],
						[1+dx, 1+dy],
						[1+dx, 0+dy] ]);

			// Odd Shaped Piece
			assign(dx = 1 * space, dy = 1 * space)
				polygon([	[1+dx, 0+dy],
						[3+dx, 0+dy],
						[1+dx, 2+dy],
						[0+dx, 1+dy],
						[1+dx, 1+dy] ]);

			// Small Triangle
			assign(dx = 2 * space, dy = 1 * space)
				polygon([	[3+dx, 0+dy],
						[3+dx, 2+dy],
						[2+dx, 1+dy] ]);

			// "House"
			assign(dx = 2 * space, dy = 2 * space)
				polygon([	[2+dx, 1+dy],
						[3+dx, 2+dy],
						[3+dx, 3+dy],
						[2+dx, 3+dy],
						[1+dx, 2+dy] ]);

			// Large Triangle
			assign(dx = 0 * space, dy = 2 * space)
				polygon([	[0+dx, 1+dy],
						[0+dx, 3+dy],
						[2+dx, 3+dy] ]);
		}
	}
}


FivePieceTangram();

