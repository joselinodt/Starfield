Particle[] bob = new Particle[900];
void setup()
{
  size(900,900);
  for (int i = 1; i < bob.length; i++)
  {
    bob[i] = new Particle();
  }
  for(int i = 0; i < 1; i++)
  {
   bob[i] = new OddballParticle();
  }
  
}
void draw()
{
  background(0);
  for (int i = 0; i < bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}
class Particle
{
  double myX, myY, mySpeed, myAngle;
  int myColor, myOpacity;
  Particle()
  {
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myX = 450;
    myY = 450;
    myAngle = (double)(Math.random()*2* Math.PI);
    mySpeed = (double)(Math.random()*10);
    myOpacity = (int)(Math.random()*60) + 60;
  }


  void move()
  {
    myX = myX + (double)Math.cos(myAngle) * mySpeed;
    myY = myY +(double)Math.sin(myAngle) * mySpeed;
     if(mousePressed)
    {
      myX = mouseX;
      myY = mouseY;
    }
    
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 5, 5 );
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
  myColor =  color(myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256)));
  myX = 450;
  myY = 450;
  myAngle = (double)(Math.random()*2*Math.PI);
  mySpeed = (double)(Math.random()*10);
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX, (float)myY, 20,20);
  }
  void move()
   {
    myX = myX + (double)Math.cos(myAngle) * mySpeed;
    myY = myY +(double)Math.sin(myAngle) * mySpeed;
    if(mousePressed)
    {
    
      myX = mouseX;
      myY = mouseY;
    }
  }
}

