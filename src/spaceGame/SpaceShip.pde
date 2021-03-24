class SpaceShip {
  // member variables
  int x,y,health,lives,rad;
  color c;
  
  // constructor
  SpaceShip(color c) {
    x = 0;
    y = 0;
    health = 100;
    lives = 3;
    this.c = c;
    rad = 25;
  }
  
  //rock vs ship collision
  boolean rockIntersection(Rock rock){
    float distance = dist(x,y,rock.x,rock.y);
    if(distance < rad + rock.rad){
      return true;
    } else {
      return false;
    }
  }

  // member methods
  void display(int x, int y) {
    this.x = x;
    this.y = y;
    rectMode(CENTER);
    fill(c);
    rect(x+20, y+15, 10, 15);
    rect(x-20, y+15, 10, 15);
    stroke(127);
    line(x+35, y+10, x+35, y);
    line(x-35, y+10, x-35, y);
    stroke(100);
    fill(36, 40, 46);
    triangle(x, y+35, x+25, y-10, x-25, y-10);
    fill(66, 72, 82);
    triangle(x, y-25, x+40, y+15, x-40, y+15);
    fill(70, 83, 105);
    ellipse(x, y, 30, 50);
  }
}
