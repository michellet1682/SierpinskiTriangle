int myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
public void setup()
{
  size(400,400);
  background(0);
}
public void draw()
{
 
}
public void mousePressed()//optional
{
  fill(myColor);
  sierpinski(mouseX, mouseY, 200);
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x-(len/2),y-len,x,y,x-len,y);
  } else {
    sierpinski(x, y, len/2);
    sierpinski(x-(len/2), y, len/2);
    sierpinski(x-(len/4), y - (len/2), len/2);
  }
}
