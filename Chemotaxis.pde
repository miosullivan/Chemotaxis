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
  int x, y, f;
  Bacteria() {
    x = 150;
    y = 150;
    f = (int)(Math.random()*254);
  }    
  void move() {
    int peebus = (int)(Math.random()*4)+1;
    if(peebus == 1)
      y++;
    else if(peebus == 2)
      x++;
    else if(peebus == 3)
      y--;
    else if(peebus == 4)
      x--;
}
  void show() {
    fill(f);
    ellipse(x, y, 10, 10);
  }
}
