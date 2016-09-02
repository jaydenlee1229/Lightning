int yRain = -50;
void setup()
{
	size(700,300);
    background(0);
    frameRate(30);
}
void draw()
{
	rain();
}
void mousePressed()
{
	background(0);
	lightning();
}
void rain()
{	
	int[] x = {(int)(Math.random() * 700), (int)(Math.random() * 700), (int)(Math.random() * 700), (int)(Math.random() * 700)};
	background(0);
	strokeWeight(1);
	stroke(0, 0 ,255, 100);
	fill(0, 0, 200, 200);
	for(int i = 0; i < 4; i++)
	{
		ellipse(x[i], yRain + (int)(Math.random()* -300), 6, 10);
		yRain += 6;
		if (yRain > 350)
		{
			yRain = (int)(Math.random() * -50);
		}
	}
}
void lightning()
{
	int startX = (int)(Math.random() * 500 + 100);
	int startY = 0;
	int endX = startX;
	int endY = startY;
	while(startY < 300)
	{
		stroke(255, 255, 0);
		strokeWeight(3);
		endX = startX + (int)((Math.random() * 40 - 20));
		endY = startY + (int)((Math.random() * 15));
		line(startX, startY, endX, endY);
		stroke(255);
		line(startX + 9, startY, endX + 9, endY);
		startX = endX;
		startY = endY;
	}
}