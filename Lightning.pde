int startX = 150;
int startY = 0;
int endX = 150;
int endY = 20;
void setup()
{
	size(300,300);
    background(0);
    strokeWeight(5);
    noLoop();
}
void draw()
{
	fill(255, 255, 0);
	stroke(255, 255, 0);
	line(startX, startY, endX, endY);
	while(startY < 300)
	{
		line(startX, startY, endX, endY);
		startX += (int)((Math.random()*20 - 10));
		startY += (int)((Math.random()*20 - 10));
		endX += (int)((Math.random()*20 - 10));
		endY += (int)((Math.random()*20 - 10));
		noLoop();
	}
}
void mousePressed()
{
	redraw();
}

