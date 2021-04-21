// Calculator for Programming 1
// Jana Amer | Nov 2020


//Globals
Button[] numButtons = new Button[10];
Button[] opButtons = new Button[14];
String dVal;
String op; //operator to use in a calculation
float r = 0.0; //what is right of the operator
float l = 0.0; //what is left of the operator
float result = 0.0;
boolean left = true ; 
int currentNum = 0;

void setup() {
  size(300, 550); //Compact
  dVal = "0";
  numButtons[0] = new Button(75, 475, 75, 75, "0", #BECDD6, #A0D3ED);
  numButtons[1] = new Button(0, 250, 75, 75, "1", #BECDD6, #A0D3ED);
  numButtons[2] = new Button(75, 250, 75, 75, "2", #BECDD6, #A0D3ED);
  numButtons[3] = new Button(150, 250, 75, 75, "3", #BECDD6, #A0D3ED);
  numButtons[4] = new Button(0, 325, 75, 75, "4", #BECDD6, #A0D3ED);
  numButtons[5] = new Button(75, 325, 75, 75, "5", #BECDD6, #A0D3ED);
  numButtons[6] = new Button(150, 325, 75, 75, "6", #BECDD6, #A0D3ED);
  numButtons[7] = new Button(0, 400, 75, 75, "7", #BECDD6, #A0D3ED);
  numButtons[8] = new Button(75, 400, 75, 75, "8", #BECDD6, #A0D3ED);
  numButtons[9] = new Button(150, 400, 75, 75, "9", #BECDD6, #A0D3ED);
  opButtons[0] = new Button(150, 100, 75, 75, "C", #AAAAAA, #DCEFFA);
  opButtons[1] = new Button(225, 250, 75, 75, "*", #68A4F0, #57BBF0);
  opButtons[2] = new Button(0, 475, 75, 75, "%", #68A4F0, #57BBF0);
  opButtons[3] = new Button(150, 475, 75, 75, ".", #68A4F0, #57BBF0);
  opButtons[4] = new Button(225, 475, 75, 75, "=", #68A4F0, #57BBF0);
  opButtons[5] = new Button(225, 400, 75, 75, "+", #68A4F0, #57BBF0);
  opButtons[6] = new Button(225, 325, 75, 75, "-", #68A4F0, #57BBF0);
  opButtons[7] = new Button(225, 175, 75, 75, "/", #68A4F0, #57BBF0);
  opButtons[8] = new Button(150, 175, 75, 75, "±", #68A4F0, #57BBF0);
  opButtons[9] = new Button(75, 175, 75, 75, "Rand", #68A4F0, #57BBF0);
  opButtons[10] = new Button(0, 175, 75, 75, "sin", #68A4F0, #57BBF0);
  opButtons[11] = new Button(0, 100, 75, 75, "√", #68A4F0, #57BBF0);
  opButtons[12] = new Button(75, 100, 75, 75, "cos", #68A4F0, #57BBF0);
  opButtons[13] = new Button(225, 100, 75, 75, "x²", #68A4F0, #57BBF0);
}

void draw() {
  background(146, 153, 157);

  // Display and hover buttons
  for (int i=0; i<numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  for (int i=0; i<opButtons.length; i++) {
    opButtons[i].display();
    opButtons[i].hover(mouseX, mouseY);
  }
  //Show Calculator Display
  updateDisplay();
}


void updateDisplay() {
  rectMode(CORNER);
  fill(123, 143, 155);
  rect(0, 0, width, 100);
  //textSize(25);
  fill(255);
  textAlign(CENTER);
  //text(dVal, width-50, 80);

  //Render Scaling Text
  if (dVal.length()<13) {
    textSize(32);
  } else if (dVal.length()<14) {
    textSize(28);
  } else if (dVal.length()<15) {
    textSize(26);
  } else if (dVal.length()<17) {
    textSize(24);
  } else if (dVal.length()<19) {
    textSize(22);
  } else if (dVal.length()<21) {
    textSize(20);
  } else if (dVal.length()<23) {
    textSize(18);
  } else if (dVal.length()<25) {
    textSize(16);
  } else {
    textSize (14);
  }
  text(dVal, width-15, 50);
  textAlign(LEFT);
}


void mouseReleased() {
  for (int i=0; i<numButtons.length; i++) {
    if (numButtons[i].hover && dVal.length()<20) {
      handleEvent(numButtons[i].val, true);
    }
  }

  for (int i=0; i<opButtons.length; i++) {
    if (opButtons[i].hover) {
      handleEvent(opButtons[i].val, false);
    }
  }
}

void keyPressed() {
  println("KEY:" + key + " keyCode:" + keyCode);

  if (key == '0') {
    handleEvent("0", true);
  } else if (key == '1') {
    handleEvent("1", true);
  } else if (key == '2') {
    handleEvent("2", true);
  } else if (key == '3') {
    handleEvent("3", true);
  } else if (key == '4') {
    handleEvent("4", true);
  } else if (key == '5') {
    handleEvent("5", true);
  } else if (key == '6') {
    handleEvent("6", true);
  } else if (key == '7') {
    handleEvent("7", true);
  } else if (key == '8') {
    handleEvent("8", true);
  } else if (key == '9') {
    handleEvent("9", true);
  } else if (key == '+') {
    handleEvent("+", false);
  } else if (key == '-') {
    handleEvent("-", false);
  } else if (key == '*') {
    handleEvent("*", false);
  } else if (key == '/') {
    handleEvent("/", false);
  } else if (key == '.') {
    handleEvent(".", false);
  } else if (key == 'C') {
    handleEvent("C", false);
  } else if (key == 10) { 
    {
      if (keyCode == ENTER || keyCode == RETURN) {
        handleEvent("=", false);
      }
    } } else if (keyCode == 27) {
      key = 0;
      if (key == 0) {
        handleEvent("C", false);
      }
    }
  }



String handleEvent(String val, boolean num) {
  if (left & num) { // Left Number
    if (dVal.equals("0") || result == l) {
      dVal = (val);
      l = float(dVal);
    } else { 
      dVal += (val);
      l = float(dVal);
    }
  } else if (!left && num) {
    if (dVal.equals("0") || result == l) {
      dVal = (val);
      r = float(dVal);
    } else { 
      dVal += (val);
      r = float(dVal);
    }
  } else if (val.equals("C")) {
    dVal = "0";
    result = 0.0;
    left = true;
    r = 0.0;
    l = 0.0;
    op = "";
  } else if (val.equals("+")) {
    if (!left) {
      performCalc();
    } else {
      op = "+";
      left = false;
      dVal = "0";
    }
  } else if (val.equals("-")) {
    op = "-";
    left = false;
    dVal = "0";
  } else if (val.equals("*")) {
    op = "*";
    left = false;
    dVal = "0";
  } else if (val.equals("÷")) {
    op = "÷";
    left = false;
    dVal = "0";
  } else if (val.equals("%")) {
    if (left) {
      l *= 0.1;
      dVal = str(l);
    } else {
      r *= 0.1;
      dVal = str(r);
    }
  } else if (val.equals("±")) {
    if (left) {
      l *= -1;
      dVal = str(l);
    } else {
      r *= -1;
      dVal = str(r);
    }
  } else if (val.equals("x²")) {
    if (left) {
      l = sq(l);
      dVal = str(l);
    } else {
      r = sq(r);
      dVal = str(r);
    }
  } else if (val.equals("√")) {
    if (left) {
      l = sqrt(l);
      dVal = str(l);
    } else {
      r = sqrt(r);
      dVal = str(r);
    }
  } else if (val.equals("sin")) {
    if (left) {
      l = sin(radians(l));
      dVal = str(l);
    } else {
      r = sin(radians(r));
      dVal = str(r);
    }
  } else if (val.equals("cos")) {
    if (left) {
      l = cos(radians(l));
      dVal = str(l);
    } else {
      r = cos(radians(r));
      dVal = str(r);
    }
  } else if (val.equals("Rand")) {
    if (left) {
      l = random(0, 1);
      dVal = str(l);
    } else {
      r = random(0, 1);
      dVal = str(r);
    }
  } else if (val.equals(".") && !dVal.contains(".")) {
    dVal += (val);
  } else if (val.equals("=")) {
    performCalc();
  }
  return val;
}

void performCalc() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("*")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = l / r;
  }
  l = result;
  dVal = str(result);
  left = true;
}
