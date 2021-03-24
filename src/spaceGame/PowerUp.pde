class PowerUp {
  //member variables
  int x,y,speed, r, pu;
  String[] puInfo = {"Ammo", "Health", "Lasers", "Super"};
  PImage photo;
  
  
  //constructor
  PowerUp (int x, int y){
    r = 80;
    this.x = 0;
    this.y = 0;
    speed = int(random(2,8));
    pu = int(random(4));
    photo = loadImage("Ammo.png");
  }
  void move(){
    y += speed;
  }
  
  boolean reachedBottom(){
    if(y > height + r*4){
    return true;
    } else {
    return false;
    }
  }
  
  // member methods
  void display() {
  switch(pu){
  case 0: //ammo
  image(photo, x, y);
  break;
  }
  }
}
