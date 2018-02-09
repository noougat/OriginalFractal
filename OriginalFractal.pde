int i = 0;
public void setup()
{
  size(500,500);
}

public void draw()
{
  background(230,mouseY/2,mouseX/2);
  rotate(i);
  myFractal(0,0,500);
  i = i + 25;
}

public void myFractal( float x, float y, float siz)
{
  noStroke();
  fill(230,mouseY/2,mouseX/2);
  quad(x,y,x+siz,y,x+siz,y+siz,x,y+siz);
  fill(200,mouseY/2,mouseX/2);
  quad(x+siz/2,y,x+siz,y+siz/2,x+siz/2,y+siz,x,y+siz/2);
  if(siz > 10)
  {
    myFractal(x+siz/4,y+siz/4,siz/2);
  }
}