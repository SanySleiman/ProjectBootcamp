static final int NUM_LINES = 10;
float t;
float counter;
color aColor;
boolean startUpScreen;


void setup() {
  background(99);
  size(600, 600);
  counter = 0;
  aColor = color( random(0, 255), random(0, 255), random(0, 255));
  frameRate(35);
  startUpScreen = true;
  textSize(50);
  textAlign(CENTER, CENTER);
      pushMatrix();
}

void draw() {
  background(20);

  strokeWeight(7);

  counter = frameCount %60;
  pushMatrix();
  translate(width/2, height/2);
  if (counter%50==0)
    aColor = color( random(0, 255), random(0, 255), random(0, 255));


  stroke(aColor);
  println(counter);

  for (int i = 0; i <NUM_LINES; i++) {
    line(x1(t+ i), y1(t+i), x2(t+i), y2(t+i));
  }


  stroke(aColor);
  for (int i = 0; i <NUM_LINES; i++) {
    line(x3(t+ i), y3(t+i), x4(t+i), y4(t+i));
  }

  stroke(aColor);
  for (int i = 0; i <NUM_LINES; i++) {
    line(x5(t+ i), y5(t+i), x6(t+i), y6(t+i));
  }
  t+=0.5;
  
  popMatrix();
  if (startUpScreen) {
    pushMatrix();
      translate(width/2, height/2);

    fill(1);
    rectMode(CENTER);
    rect(0, 0, 600, 600);
    fill(255);
 
    popMatrix();
      
    text("Click to PLAY =)", width/2, height/2);
    println("test");
  }
  if (mousePressed == true) {
    startUpScreen = false;
  }
}





float x1(float t) {
  return -sin(t/10) * 100 + sin(t/5) * 100;
}
float y1(float t) {
  return cos(-t/10) * 100 + sin(t/5) * 10;
}

float x2(float t) {
  return -sin(t/10) * 100+ sin(t) * 2 + cos(t) * 12;
}
float y2(float t) {
  return cos(t/20) * 200 + cos(t / 12) * 20;
}

float x3(float t) {
  return sin(t/10) * 100 + sin(t/5) * 100;
}
float y3(float t) {
  return -cos(-t/10) * 100 + sin(t/5) * 10;
}

float x4(float t) {
  return -sin(t/10) * 100+ sin(t) * 2 + cos(t) * 12;
}
float y4(float t) {
  return cos(t/20) * 200 + cos(t / 12) * 20;
}
float x5(float t) {
  return sin(t/6) * 100 + sin(t/5) * 100;
}
float y5(float t) {
  return -cos(-t/6) * 100 + sin(t/5) * 10;
}

float x6(float t) {
  return sin(t/6) * 100+ sin(t) * 2 + cos(t) * 15;
}
float y6(float t) {
  return cos(t/20) * 200 + cos(t / 12) * 100;
}
