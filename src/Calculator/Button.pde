  class Button {
  // Member variables
  int x,y,w,h;
  color c1, c2;
  String val;
  boolean hover;
  
  // Constructor
  Button(int x, int y, int w, int h, String val, color c1, color c2) {
    this.x = x;
    this.y = y;
    this.w = w;
    this.h = h;
    this.c1 = c1;
    this.c2 = c2;
    this.val = val;
    hover = false;
  }
  
  // Display Method
  void display() {
    if(hover) {
      fill(c1);
    }else{
      fill(c2);
    }
    rect(x,y,w,h,8);
    fill(0);
    textSize(14);
    text(val,x+10,y+30);
  }
  
  // Hover Method
  void hover(int tempX, int tempY) {
    hover = tempX>x-w/2 && tempX<x+w/2 && tempY>y-h/2 && tempY<y+h/2;
  }
}
