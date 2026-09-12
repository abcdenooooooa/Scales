void setup()
{
  size(400,400);
  noLoop();
}

void scale(int x, int y)
{
  x += (Math.random()-0.5)*2;
  y += (Math.random()-0.5)*2;
  fill(47,76,180);
  beginShape();
  curveVertex(x-25,y-25);
  curveVertex(x-25,y-25);
  curveVertex(x-25,y);
  curveVertex(x-5,y+10);
  curveVertex(x,y+30);
  curveVertex(x+5,y+10);
  curveVertex(x+25,y);
  curveVertex(x+25,y-25);
  curveVertex(x+25,y-25);
  endShape();
  float b = 180;
  float r = 47;
  float g = 76;
  noFill();
  for (int d = 25; d >= 0; d--)
  {
    stroke(r,g,b);
    ellipse(x,y-5,d,d);
    b-= Math.random()*3;
    r -= Math.random()*2-0.5;
    g -= Math.random()*2.5-0.5;
  }
  stroke(0,0,0);
}

void draw()
{
  for (int y = 400;y >= 0; y -= 25)
  {
    for (int x = 0; x <= 400; x += 50)
    {
      if (y%2 == 0)
      {
        scale(x, y);
      }
      else
      {
        scale(x+25,y);
      }
    }
  }
}

