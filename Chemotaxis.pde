Bacteria [] spread;
void setup()   
{     
  size(300, 300);
  background(0);
  spread = new Bacteria[100];
  for (int i = 0; i < spread.length; i++)
  {
    spread[i] = new Bacteria();
  }
}
void draw()   
{    
  for (int i = 0; i < spread.length; i++)
  {
    spread[i].move() ;
    spread[i].show() ;
  }
}
class Bacteria    
{     
  int x, y, colour;
  Bacteria() {
    x = 150;
    y = 150;
    colour = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));;
  }    
  void move() {
    int moveIt = (int)(Math.random()*4)+1;
    if(moveIt == 1)
      y++;
    else if(moveIt == 2)
      x++;
    else if(moveIt == 3)
      y--;
    else if(moveIt == 4)
      x--;
}
  void show() {
    fill(colour);
    ellipse(x, y, 10, 10);
  }
}
