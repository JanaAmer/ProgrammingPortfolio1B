// Space Game December 2020/2021
// by Jana Amer

SpaceShip s1;
ArrayList<Laser> lasers;
ArrayList<Rock> rocks;
ArrayList<Star> stars;
ArrayList<PowerUp> pUps;
Timer rockTimer, puTimer;
int score, pass, weaponCount, superWeapon;
boolean play;
import processing.sound.*;
SoundFile laser;
PImage photo;

void setup() {
  size(500, 500);
  s1 = new SpaceShip(color(55, 62, 74));
  lasers = new ArrayList();
  rocks = new ArrayList();
  stars = new ArrayList();
  pUps = new ArrayList();
  rockTimer = new Timer(int(random(1000, 5000)));
  rockTimer.start();
  puTimer = new Timer(int(random(5000, 10000)));
  puTimer.start();
  score = 0;
  pass = 0;
  weaponCount = 1;
  superWeapon = 0;
  play = false;
  laser = new SoundFile(this, "sound.mp3");
  photo = loadImage("Game Over.png");
}

void draw() {
  noCursor();
  //Gameplay
  if (!play) {
    startScreen();
  } else {
    background(0);

    stars.add(new Star(int(random(width)), int(random(height)), color(255)));
    for (int i = 0; i < stars.size(); i++) {
      Star star = stars.get(i);
      star.display();
      star.move();
      if (star.reachedBottom()) {
        stars.remove(star);
      }
    }

    if (rockTimer.isFinished()) {
      rocks.add(new Rock(int(random(width)), -50));
      rockTimer.start();
    }

    for (int i = 0; i < rocks.size(); i++) {
      Rock rock = rocks.get(i);
      rock.display();
      rock.move();
      // rock vs ship collision
      if (s1.rockIntersection(rock)) {
        s1.health -= rock.health;
        rocks.remove(rock);
        score += rock.health;
      }
      if (rock.reachedBottom()) {
        pass++;
        rocks.remove(rock);
      }
    }

    for (int i = 0; i < lasers.size(); i++) {
      Laser laser = lasers.get(i);
      laser.display();
      laser.fire();
      //Laser vs rock intersection
      for (int j = 0; j < rocks.size(); j++) {
        Rock rock = rocks.get(j);
        if (rock.laserIntersection(laser)) {
          score+=10;
          rock.health-=10;
          lasers.remove(laser);
          if (rock.health<1) {
            rocks.remove(rock);
            score+=rock.health;
          }
        }
      }
      if (laser.reachedTop()) {
        lasers.remove(laser);
      }
    }
    
    if (puTimer.isFinished()) {
      pUps.add(new PowerUp(int(random(width)), -20));
      puTimer.start();
    }
    
    // for (int i = 0; i < pUps.size(); i++) {
    //  PowerUp pu = pUps.get(i);
    //  pu.display();
    //  pu.move();
    //  // powerup and ship
    //  //if(s1.puIntersect(pu)){
    //  if (pu.pu == 0) {
    //    //s1.ammo+=1000; //ammo
    //  } else if (pu.pu == 1){//health
    //    s1.health+=100;
    //  } else if (pu.pu == 2){//weapon
    //    weaponCount++;
    //  } else if (pu.pu == 3){//super
    //    superWeapon++;
    //  }
    //  pUps.remove(pu);
    //}
  }
 
    infoPanel();
    
    s1.display(mouseX, mouseY);
    
    //Gameover
   if(s1.health<1 || pass>10){
     play = false;
     gameOver();
   }
  }


void mousePressed() {
  laser.play();
  lasers.add(new Laser(color(#77ED5D), s1.x, s1.y));
}

void keyPressed() {
  //use spacebar for firing
}

void startScreen(){
  background(0);
  textAlign(CENTER);
  textSize(15);
  text("Welcome to my Space Game!", width/2-15, height/2-60);
  text("Click to continue..", width/2-10, height/2+20);
  text("Use your mouse to control the ship", width/2-15,height/2-35);
  text("Left/Right Click to fire lasers and destroy asteroids", width/2,height/2-10);
  
  if (mousePressed){
    play = true;
  }
}


void infoPanel() {
  fill(128, 128);
  rectMode(CORNER);
  rect(0, height-50, width+10, 50);
  fill(255, 128);
  text("Health: " + s1.health, 60, height-20);
  text("Lives: " + s1.lives, 140, height-20);
  text("Level: ", 210, height-20);
  text("Score: " + score, 280, height-20);
  text("Pass: "+ pass, 350, height-20);
}

void gameOver(){
  background(0);
  textAlign(CENTER);
  fill(222);
  image(photo,width/2-180,height/2-250);
  //text("Game Over!", width/2, height/2);
  textSize(20);
  text("Final Score: " + score, width/2, height/2+120);
  text("Thank You for Playing!", width/2, height/2+140);
  noLoop();
}
