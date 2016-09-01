void setup()
{
	size(300,300);
    background(0);
}
void draw()
{
	fill(0, 0, 0, 100);
	//rect(-10, -10, 320, 320);
	rain();
}
void mousePressed()
{
	background(0);
	lightning();
}
void rain()
{	
	int[] x = {(int)(Math.random() * 300), (int)(Math.random() * 300), (int)(Math.random() * 300), (int)(Math.random() * 300)};
	int y = -50;
	
	for(int i = 0; i < 4; i ++)
	{
		System.out.println("5");
		fill(255);
		ellipse(150, y, 7, 7);
		y += 10;
		if (y > 350)
		{
			y = -50;
		}
	}
}
void lightning()
{
	int startX = 150;
	int startY = 0;
	int endX = startX;
	int endY = startY;
	while(startY < 300)
	{
		stroke(255, 255, 0);
		strokeWeight(3);
		endX = startX + (int)((Math.random() * 30 - 15));
		endY = startY + (int)((Math.random() * 15));
		line(startX, startY, endX, endY);
		stroke(255);
		line(startX + 9, startY, endX + 9, endY);
		startX = endX;
		startY = endY;
	}
}