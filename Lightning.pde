int startX = 150;
int startY = 0;
int endX = startX;
int endY = startY;

void setup()
{
	size(300,300);
    background(0);
    //noLoop();
}
void draw()
{
	
}
void mousePressed()
{
	lightning();
	//redraw();
}
void lightning()
{
	while(startY < 300)
	{
		stroke(255, 255, 0);
		strokeWeight(3);
		endX = startX + (int)((Math.random() * 30 - 15));
		endY = startY + (int)((Math.random() * 15));
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}