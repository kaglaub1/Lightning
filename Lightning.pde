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
  
  if (startY == 0){
    background(#222839);
    strokeWeight(2);
    stroke((int)(Math.random()*10)+240, (int)(Math.random()*10)+240, 0);
    for (int y = 0; y < 8; y++){
      endX = startX + (int)(Math.random()*20)-10;
      endY = startY + (int)(Math.random()*10)+10;
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    noStroke();
    fill(#2F3543);
    for (int i = 0; i < 8; i++){
      arc(i*80, 0, (int)(Math.random()*50)+100, (int)(Math.random()*40)+140, 0, PI);
    }
  
  }
  
  
  strokeWeight(2);
  stroke((int)(Math.random()*10)+240, (int)(Math.random()*10)+240, 0);
  if (endY <= 500){
    endX = startX + (int)(Math.random()*30)-15;
    endY = startY + (int)(Math.random()*10)+10;
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }else if (endY < 520){
    background(#222839);
    noStroke();
    fill(#2F3543);
    for (int i = 0; i < 8; i++){
      arc(i*80, 0, (int)(Math.random()*50)+100, (int)(Math.random()*40)+140, 0, PI);
    }
    endY = 0;
  }
  
}
void mousePressed()
{
  startX = (int)(Math.random()*300)+100;
  endX = (int)(Math.random()*300)+100;
  startY = 0;
  endY = 0;
}
