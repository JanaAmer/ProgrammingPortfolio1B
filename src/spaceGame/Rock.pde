class Rock {
  //member variables
  int x,y,health,speed, rad;
  PImage photo;
  
  //constructor
  Rock(int x, int y) {
    this.x = x;
    this.y = y;
    health = 20;
    speed = int(random(2,5));
    photo = loadImage("rock.png");
    rad = 50;
  }
  
  //Laser vs rock intersection
  boolean laserIntersection(Laser laser){
    float distance = dist(x,y,laser.x,laser.y);
    if(distance < rad + laser.rad){
      return true;
    } else {
      return false;
    }
  }
  
  boolean reachedBottom(){
    if(y > height + 50){
      return true;
    } else {
      return false;
    }
  }
  
  void move(){
    y+=speed;
  }
  
  // member methods
  void display() {
     image(photo, x, y);
  }

////detects rock vs laser
//boolean laserIntersection(Laser laser){
//    float distance = dist(x,y,laser.x,laser.y);
//    if(distance < rad + laser.rad){
//      return true;
//    } else {
//      return false;
//    }
//  }
}
