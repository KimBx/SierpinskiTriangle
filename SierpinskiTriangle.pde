int len=250;
int opacity=500;
color epilepsy;
public void setup()
{
  size(600,600);
}
public void draw()
{
  background(255,255,255);
  //sierpinski(10,790,len);
  sierCarpet(50,height-50,len);
  if(len>1000)
  {
    len=len/3;
    opacity=60;
  }
  if(len<250)
  {
    len=len*3;
    opacity=60;
  }
   sierCarpet(300,height-50,len);
  if(len>1000)
  {
    len=len/3;
    opacity=60;
  }
  if(len<250)
  {
    len=len*3;
    opacity=60;
  }
  sierCarpet(300,height-300,len);
  if(len>1000)
  {
    len=len/3;
    opacity=60;
  }
  if(len<250)
  {
    len=len*3;
    opacity=60;
  }
  sierCarpet(50,height-300,len);
  if(len>1000)
  {
    len=len/3;
    opacity=60;
  }
  if(len<250)
  {
    len=len*3;
    opacity=60;
  }


}
public void mouseDragged()//optional
{

}

public void sierpinski(int x, int y, int len) 
{
 if(len<=10)
  {
    triangle(x,y,x+len/2,y-len,x+len,y);
  }
  else 
  {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}

public void sierCarpet(int x, int y, int len) 
{
 if(len<=15)
  {
    epilepsy = color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255),opacity);
    fill(epilepsy);
    noStroke();
    rect(x,y,len,len);
  }
  else 
  {
    sierCarpet(x,y-2*len/3,len/3);
    sierCarpet(x,y-len/3,len/3);
    sierCarpet(x,y,len/3);
    sierCarpet(x+len/3,y-2*len/3,len/3);
    sierCarpet(x+len/3,y,len/3);
    sierCarpet(x+2*len/3,y-2*len/3,len/3);
    sierCarpet(x+2*len/3,y-len/3,len/3);
    sierCarpet(x+2*len/3,y,len/3);
  }
}