public void setup()
{

  size(600, 600);
  int len = 600;
}


public void draw()
{
  background(0);
  translate(250,250);
  fract(0, 0, 250);
}
void mouseWheel(MouseEvent event)
{
  int len = 600;
  double t = event.getCount();
  len += 75*t;
  fract(X, Y, len/1);
  fract(X, Y, len/2);
  fract(X, Y, len/3);
  fract(X, Y, len/4);
  fract(X, Y, len/5);
  fract(X, Y, len/6);
  fract(X, Y, len/7);
}

public void fract(int X, int Y, int S) {
  if (S <= 20)
  {
    rect(0, 0, 10, 10);
  } else
  {
    rect(X, Y, S, S);
    rect(X,Y,S*.75,S*.75);
    fract(X+S/2,Y+S/2,S/2);
    fract(X-S/2,Y-S/2,S/2);
    
    
    
    
  }
}
