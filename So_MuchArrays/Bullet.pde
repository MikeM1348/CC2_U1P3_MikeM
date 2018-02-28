class Bullet
{
  PVector position;
  PVector direction;
  PImage egg;
  float rot = 0;
 // color c;
  
  //Default Constructor
  Bullet()
  {
    position = new PVector(width/2, height/2);
    direction = new PVector(40,0);
  }
  
  //OVERLOADED Constructor
  Bullet(float _x, float _y, PImage _egg)
  {
    position = new PVector(width/2, height/2);
    direction = new PVector(_x - position.x, _y - position.y);
    direction.normalize();
    egg = _egg;
 //   c = color(random(255),120,255);
  }
  
  void Update()
  {
//  fill(c);
    position.add(direction);
    pushMatrix();
    translate(position.x, position.y);
    rotate(rot);
    imageMode(CENTER);
    image(Egg, 0, 0, 30, 30);
    popMatrix();
    
rot-=PI/30;
  }
}