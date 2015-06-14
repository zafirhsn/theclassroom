private PImage bg;
private PImage backarrow;

private PFont font;

private int startboxX = 185;
private int startboxY = 370;

private boolean menuScreen = true;
private boolean boardScreen = false;
private boolean helpScreen = false;

void setup() {
  size(800, 700);
  
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
  text("Play", (width-100)/2, height/2+50);
}

//=======BACK ARROW=========
void createBack() {
  ellipse(30, 30, 50, 50);
  backarrow = loadImage("backarrow.png");
  image(backarrow, 5, 5, 50, 50);
}
//==========================

void onStart(){
   setupClassroom(); 
}

void setupClassroom(){
  final int maxX=800;
  final int maxY=700;
  background(24,116,205);
  fill(238,180,34);
  rect(30,30,maxX-60,maxY-60);
  line(0,0,30,30);
  line(0,maxY,30,maxY-30);
  line(maxX,0,maxX-30,30);
  line(maxX-30,maxY-30,maxX,maxY);
  
  fill(0);
  rect(65,75,100,50);
  fill(184,134,11);
  rect(70,80,90,40);
  
  for(int i=0;i<4;i=i+1){
     for(int j=0;j<4;j=j+1){
        int x=65+190*i;
        int y=200+120*j;
        fill(0);
        rect(x,y,100,50);
        fill(184,134,11);
        rect(x+5,y+5,90,40);
     } 
  }
}
