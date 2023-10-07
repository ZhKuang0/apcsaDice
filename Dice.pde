Dice dien;
void setup()
{
	background(0,100,100);
	size(500,500);
	noLoop();
}
void draw()
{
	int sum = 0;
	for(int y=0;y < = 501;y += 50){
  	for(int x=0;x <= 500; x += 50){
  	dien = new Dice(x, y);
  	dien.show();
  	dien.roll();
  	sum = sum + dien.face;
}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
int myX, myY, mySize, face;
  Dice(int x, int y)
  {
    face = (int)(Math.random()*6)+1;
    myX = x;
    myY = y;
    mySize = 50;
  }
	}
	void roll()
	{
	 if (face == 1) {
      fill(0);
      ellipse(myX+20, myY+20, 7, 7);
    } else if (face ==2) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
    } else if (face == 3) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+20, myY+20, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
    } else if (face == 4) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+30, myY+10, 7, 7);
      ellipse(myX+10, myY+30, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
    } else if (face == 5) {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+30, myY+10, 7, 7);
      ellipse(myX+10, myY+30, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
      ellipse(myX+20, myY+20, 7, 7);
    } else {
      fill(0);
      ellipse(myX+10, myY+10, 7, 7);
      ellipse(myX+10, myY+20, 7, 7);
      ellipse(myX+10, myY+30, 7, 7);
      ellipse(myX+30, myY+10, 7, 7);
      ellipse(myX+30, myY+20, 7, 7);
      ellipse(myX+30, myY+30, 7, 7);
	}
	void show()
	{
		 fill(255, 255, 255);
    rect(myX, myY, mySize, mySize, 10);
	}
}
