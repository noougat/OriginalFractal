
public void setup()
{
  size(500,500);
}

public void draw()
{
  background(230,mouseY,mouseX);
  myFractal(0,0,500);
}

public void myFractal( float x, float y, float siz)
{
  noStroke();
  fill(230,mouseY,mouseX);
  quad(x,y,x+siz,y,x+siz,y+siz,x,y+siz);
  fill(200,mouseY,mouseX);
  quad(x+siz/2,y,x+siz,y+siz/2,x+siz/2,y+siz,x,y+siz/2);
  if(siz > 10)
  {
    myFractal(x+siz/4,y+siz/4,siz/2);
  }
}