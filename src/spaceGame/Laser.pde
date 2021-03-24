class Laser {
  //member variables
  int x,y,speed,rad;
  color c;
  
  //constructor
  Laser(color c, int x, int y) {
    this.x = x;
    this.y = y;
    speed = 3;
    this.c = c;
    rad = 8;
  }
  
  void fire(){
    y-=speed;
  }
  
  boolean reachedTop(){
    if(y < 0){
      return true;
    } else {
      return false;
    }
  }
  
  // member methods
  void display() {
    noStroke();
    fill(c);
    rectMode(CENTER);
    rect(x,y,4,8);
  }
}
