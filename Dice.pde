Die dien;
void setup()
{
  background(0,100,100);
  size(1000,1000);
  noLoop();
}
void draw()
{
  int sum = 0;
  for(int x = 0; x <= 500; x += 50){
    for(int y = 70; y <= 500; y += 50){
      dien = new Die(20 + x, 20 + y);
      dien.show();
      sum = sum + dien.broll;
    }
  }
  fill(0,0,0);
  textSize(30);
  text("sum: " + sum, 50,50);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int ax, cx, broll;
  
  Die(int x, int y) //constructor
  {
    ax = x;
    cx = y;
  }
  void roll()
  {
    broll = (int) (Math.random()*6+1);
  }
  void show()
  {
        int size = 40;
    fill(255,255,255);
    rect(ax, cx, size, size);
    fill(255);
    roll();
    if(broll == 1){
      fill(0);
      ellipse(ax+20, cx+20, 7, 7);
    } else if(broll ==2) {
      fill(0);
      ellipse(ax+10, cx+10, 7, 7);
      ellipse(ax+30, cx+30, 7, 7);
    } else if(broll == 3) {
      fill(0);
      ellipse(ax+10, cx+10, 7, 7);
      ellipse(ax+20, cx+20, 7, 7);
      ellipse(ax+30, cx+30, 7, 7);
    } else if(broll == 4) {
      fill(0);
      ellipse(ax+10, cx+10, 7, 7);
      ellipse(ax+30, cx+10, 7, 7);
      ellipse(ax+10, cx+30, 7, 7);
      ellipse(ax+30, cx+30, 7, 7);
    } else if(broll == 5) {
      fill(0);
      ellipse(ax+10, cx+10, 7, 7);
      ellipse(ax+30, cx+10, 7, 7);
      ellipse(ax+10, cx+30, 7, 7);
      ellipse(ax+30, cx+30, 7, 7);
      ellipse(ax+20, cx+20, 7, 7);
    } else {
      fill(0);
      ellipse(ax+10, cx+10, 7, 7);
      ellipse(ax+10, cx+20, 7, 7);
      ellipse(ax+10, cx+30, 7, 7);
      ellipse(ax+30, cx+10, 7, 7);
      ellipse(ax+30, cx+20, 7, 7);
      ellipse(ax+30, cx+30, 7, 7);
    }
  }
}
