int startX = 250;
int endX = 250;
int startY = 0;
int endY = 0;
void setup()
{
  size(500,500);
}
void draw()
{
  background(#222839);
  
  strokeWeight(2);
  stroke((int)(Math.random()*10)+240, (int)(Math.random()*10)+240, 0);
  while(endY <= 500){
    endX = startX + (int)(Math.random()*30)-15;
    endY = startY + (int)(Math.random()*15)+10;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  noStroke();
  fill(#2F3543);
  for (int i = 0; i < 8; i++){
    arc(i*80, 0, (int)(Math.random()*50)+100, (int)(Math.random()*40)+140, 0, PI);
  }
  noLoop();
}
void mousePressed()
{
  startX = (int)(Math.random()*300)+100;
  endX = (int)(Math.random()*300)+100;
  startY = 0;
  endY = 0;
  redraw();
}

