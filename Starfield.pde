Particle[] bob;

void setup()
{
  size(400,400);
  bob =new Particle[300];
  for (int i =0; i<bob.length; i++)
  {
    bob[i]=new NormalParticle();
  }
  bob[0]=new OddballParticle();
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
class NormalParticle
{
  int myColor;
  double myX,myY,Speed,Angle;
  
  NormalParticle()
  {
    myX=myY=200;
    Angle=(Math.random()*2) * Math.PI;
    Speed=(Math.random()*10);
  }
    void move()
    {
       myX=myX+(Math.cos(Angle))*Speed;
       myY=myY+(Math.sin(Angle))*Speed;
      
    }
    void show()
    {
      
      ellipse((float)myX,(float)myY,10,10);
      
    }
  
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle implements Particle //uses an interface
{
  int myColor;
  double myX,myY,Speed,Angle;
  void move()
    {
       myX=myX+(Math.cos(Angle))*Speed;
       myY=myY+(Math.sin(Angle))*Speed;
      
    }
    void show()
    {
      
      ellipse((float)myX,(float)myY,50,50);
      
    }
}
class JumboParticle //uses inheritance
{
  //your code here
}
