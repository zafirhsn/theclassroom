private PImage bg;
private PImage backarrow;

private PFont font;

private int startboxX = 185;
private int startboxY = 370;

private boolean menuScreen = true;
private boolean boardScreen = false;
private boolean helpScreen = false;

void setup() {
  size(800, 800);
  
  //Load background images onto window (wood, checkerboard)
  createBackground();

  //Creates title
  fill(255);
  createTitle();

  //Creates start and help buttons
  fill(255);
  createStart();
}

void createBackground() {
  bg = loadImage("chalkboard.jpg");
  image(bg, 0, 0);
  tint(255, 150);
}

void createTitle() {
   rect((width-530)/2, (height-580)/2, 550, 100, 6, 6, 6, 6);
   fill(0);
   textSize(100);
   textAlign(CENTER, CENTER);
   text("Senioritis", (width+10)/2, (height-500)/2);
}

void createStart() {
  rect(startboxX, startboxY, 170, 70, 6, 6, 6, 6);
  fill(0);
  textSize(50);
  textAlign(RIGHT, CENTER);
  text("Play", (width-100)/2, height/2);
}

//=======BACK ARROW=========
void createBack() {
  ellipse(30, 30, 50, 50);
  backarrow = loadImage("backarrow.png");
  image(backarrow, 5, 5, 50, 50);
}
//==========================


