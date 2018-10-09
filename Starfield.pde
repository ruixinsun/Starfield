NormalParticle[] bob;

void setup()
{
  size(500,500);
  bob =new NormalParticle[10];
  for (int i =0; i<bob.length; i++)
  {
    bob[i]=new NormalParticle();
  }
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
  int myX,myY,Speed,Angle;
  
  NormalParticle()
  {
    Angle=2;
    Speed=1;
  }
    void move()
    {
       myX=myX+ Speed*Angle;
       myY=myY+1;
      
    }
    void show()
    {
      ellipse(myX,myY,20,20);
    }
  
}
interface Particle
{
  public void show();
  public void move();
}
class OddballParticle //uses an interface
{
  //your code here
}
class JumboParticle //uses inheritance
{
  //your code here
}
