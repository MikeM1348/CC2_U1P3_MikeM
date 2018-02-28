/* 
MuchArrays
Array test by Mike M :D
Shoot candy-confetti everywhere!
*/
Bullet bullet;
PImage Egg;
ArrayList<Bullet> Bullets = new ArrayList<Bullet>();
void setup()
{
  size(600,600);
  bullet = new Bullet();
  noStroke();
 // colorMode(HSB);
  Egg = loadImage("Egg.png");
  //Egg.resize(100,100);
}

void draw()
{
  background(0);
 // fill(0,0,0,10);
  //rect(0,0,width,height);
  bullet.Update();
  Bullets.add(new Bullet(mouseX, mouseY, Egg));
  for(int i=Bullets.size()-1; i>=0; i--)
  {
    Bullets.get(i).Update();
    if(Bullets.get(i).position.y > height-height/5)
    {
      Bullets.remove(i);
    }
    if(Bullets.get(i).position.x > width-width/5)
    {
      Bullets.remove(i);
    }
    if(Bullets.get(i).position.y < height/5)
    {
      Bullets.remove(i);
    }
    if(Bullets.get(i).position.x < width/5)
    {
      Bullets.remove(i);
    }
  }
}

/*void mouseClicked()
{
 {
    
  } 
}
*/