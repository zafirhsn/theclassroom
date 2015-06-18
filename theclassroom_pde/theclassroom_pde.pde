private PImage bg;
private PImage backarrow;

private PFont font;

private int startboxX = 230;
private int startboxY = 250;
private int helpboxX = 450;
private int helpboxY = 370;

private boolean menuScreen = true;
private boolean boardScreen = false;
private boolean helpScreen = false;

void setup() {
  size(800, 700);
  
  //Load background images onto window (wood, checkerboard)
  createBackground();

  //Creates title
  createTitle();

  //Creates start and help buttons
  fill(255);
  createStart();
  createHelp();
}

//===============================================
void createBackground() {
  bg = loadImage("chalkboard.jpg");
  image(bg, 0, 0);
}

void createTitle() {
   rect((width-530)/2, (height-580)/2, 550, 100, 6, 6, 6, 6);
   fill(0);
   textSize(100);
   textAlign(CENTER, CENTER);
   text("Senioritis", (width+10)/2, (height-500)/2);
}

void createStart() {
  rect(startboxX, startboxY, 120, 70, 6, 6, 6, 6);
  fill(0);
  textSize(50);
  textAlign(RIGHT, CENTER);
  text("Play", (width-120)/2, height/2-75);
}

void createHelp() {
  rect(helpboxX, helpboxY, 170, 70, 6, 6, 6, 6);
  fill(0);
  textAlign(LEFT, CENTER);
  text("HELP", (width+150)/2, height/2);
}
//================================================


void hoverMenuScreen() {
  if (overStart()) {
    fill(0,200,0,50);
    createStart(); 
  }
  else {
    fill(255);
    createStart();
  }
  if (overHelp()) {
    fill(200,0,0,50);
    createHelp();
  }
  else {
    fill(255);
    createHelp();
  }
}

void hoverBack() {
  if (overBack()) {
     fill(180,0,0); 
     createBack();
  }
 else {
    fill(255);
    createBack();
 }
} 

void draw() {
  //Start and help buttons are redrawn a different shade when mouse hovers over
  if (menuScreen) {
    hoverMenuScreen();
    clickStart();
    clickHelp();
  }
 if (helpScreen || boardScreen) {
    hoverBack();
    clickBack();
 }
 
 if (boardScreen) {
    setupPieces();
 }
}


//These functions check to see if the mouse if hovering over any buttons
boolean overStart() {
  if ((mouseX >= startboxX && mouseX <= (startboxX + 170)) && (mouseY >= startboxY && mouseY <= (startboxY + 70))) {
    return true;
  }
  return false;
}

boolean overHelp() {
  if ((mouseX >= helpboxX && mouseX <= (helpboxX + 170)) && (mouseY >= helpboxY && mouseY <= (helpboxY + 70))) {
    return true;
  }
  return false;
}

boolean overBack() {
  if ((mouseX >= 5 && mouseX <= 55) && (mouseY >= 5 && mouseY <= 55)) {
    return true;
  }
  return false;
}
//================================================================

//================================================================
//These functions check to see if the mouse clicked a button
void clickStart() {
  if ((mousePressed && (mouseButton == LEFT)) && overStart()) {
    menuScreen = false;
    boardScreen = true;
    helpScreen = false;
    image(bg, 0, 0);
    image(bg, 0, 0);
    image(bg, 0, 0);
    image(fg, (width-650)/2, (height-650)/2, 650, 650);
    image(fg, (width-650)/2, (height-650)/2, 650, 650);
  }
}

void clickHelp() {
  if ((mousePressed && (mouseButton == LEFT)) && overHelp()) {
    menuScreen = false;
    boardScreen = false;
    helpScreen = true;
    image(bg, 0, 0);
    createBack();
    fill(255);
    rect (50, 50, 700, 700, 6, 6, 6, 6);
    Rules();   
  }
}

void clickBack() {
  if ((mousePressed && (mouseButton == LEFT)) && overBack()) {
    if (helpScreen == true) { 
      menuScreen = true;
      boardScreen = false;
      helpScreen = false;
      image(bg, 0, 0);
      image(bg, 0, 0);
      image(bg, 0, 0);
      setup();
    }
    if (boardScreen == true) {
      menuScreen = true;
      boardScreen = false;
      helpScreen = false;
      image(bg, 0, 0);
      image(bg, 0, 0);
      image(bg, 0, 0);
      setup();
    }
  }
}
//============================================================

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
