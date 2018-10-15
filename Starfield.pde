Particle[] bob=new Particle[300];

void setup()
{
  size(400, 400);
  
  for (int i =0; i<bob.length; i++)
  {
    bob[i]=new NormalParticle();
  }
  bob[0]=new JumboParticle();
  bob[1]=new OddballParticle();
}
void mousePressed()
{
  
  for (int i=0;i<bob.length; i++)
  {
    bob[i]=new NormalParticle();
    
  }
  
  bob[0]=new JumboParticle();
  bob[1]=new OddballParticle();
}
void draw()
{
  background(0);
  
  for (int i =0; i<bob.length; i++)
  {
    bob[i].show();
    bob[i].move();
  }
}

class NormalParticle implements Particle
{
  int myColor;
  public double myX, myY, Speed, Angle;
  
  public NormalParticle()
  {
    myX=200;
    myY=200;
    Angle=(Math.random()*2) * Math.PI;
    Speed=(Math.random()*2);
    myColor=(int)(Math.random()*255);
  }

  void move()
  {
    myX=myX+(Math.cos(Angle))*Speed;
    myY=myY+(Math.sin(Angle))*Speed;
  }
  void show()
  {
    fill(myColor,myColor,0,myColor);
    noStroke();
    ellipse((float)myX, (float)myY, 5, 5);
    fill(255);
  }
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  int myColor, direction;
  double myX, myY, Speed, Angle;
  OddballParticle()
  {
    myX=200;
    myY=350;
    Speed=(Math.random()*7);
    direction=1;
  }
  void move()
  {
    myX+=Speed*direction;
    if (myX<25)
    {
      direction=1;
    }
     if (myX>375)
     direction=-1;
  }
  void show()
  {
    fill(255,255,0);
    ellipse((float)myX, (float)myY-10, 25, 25);
    fill(128);
    ellipse((float)myX, (float)myY, 60, 20);
    
  }
}

public class JumboParticle extends NormalParticle//uses inheritance
{

  void show()
  {
    
    fill(0,255,0);
    rect((float)myX, (float)myY,20,20);
  }
}
