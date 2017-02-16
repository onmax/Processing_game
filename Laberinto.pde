int currentScene;
int maxScenes;
float x;
float y;
float en;
float em;

void Bola(int startx, int starty, float em, float en){
  fill(255, 255, 255);
  ellipse(startx+en, starty+em, 20, 20);
}

void setup() {
  // game always starts at Scene 0 (the intro scene)
  currentScene = 0;
  // there are only 4 scenes so far!
  maxScenes = 4;
  
  // set frame rate to call draw() 30 times per second
  frameRate(30);
  
  // set window size
  size(800, 600);
  // set background to black
  background(0, 0, 0);
  
}

void drawIntroScene() {
  // black background
  background(0, 0, 0);
  // Draw game title
  textSize(32);
  fill(255, 255, 255);
  text("w",200,390);
  text("s",200,415);
  text("a",175,415);
  text("d",225,415);
 
  
  fill(240,5,5);
  ellipse(550,300,30,30);
  fill(5,240,234);
  ellipse(550,250,25,25);
  fill(240,5,228);
  ellipse(550,350,20,20);
  fill(224,252,43);
  triangle(550,400,565,415,535,385);
  
  fill(250, 250, 250);
  
  text("The maze", 200, 100); 
  // Draw game instructions
  text("Press mouse to continue", 200, 150);
  
  
}

void drawScene1() {
  // white background
  background(255, 255, 255);
 
  // This is where YOU can draw the art for your Game Scene
  
  // YOUR CODE HERE
 line(20,30,20,450);
 line(20,30,700,30);
 line(20,500,700,500);
 line(700,500,700,20);
 line(20,450,300,450);
 line(300,450,300,300);
 line(350,450,650,450);
 line(350,450,350,200);
 line(300,300,150,300);
 line(150,300,150,100);
 line(75,100,75,350);
 line(80,400,200,400);
 line(200,400,200,350);
 line(200,250,300,250);
 line(650,450,650,250);
 line(650,250,600,250);
 line(550,250,400,250);
 line(500,250,500,400);
 line(600,300,600,400);
 line(550,400,400,400);
 line(425,300,425,350);
 line(550,200,550,150);
 line(550,150,700,150);
 line(600,150,600,80);
 line(550,30,550,100);
 line(450,150,350,150);
 line(450,150,450,80);
 line(450,80,400,80);
 line(350,100,250,100);
 line(350,100,350,80);
 line(250,100,250,80);
 
   //Title
    textSize(32);
    fill(0, 0, 0);
    text("Kill the beast", 50, 30); 
    // Draw game instructions
    //text("Press mouse to continue", 200, 150);
    
   
      Bola(20, 475, em, en);
      
   }

void drawScene2() {
  // red background
  background(255, 255, 255);
  
  // This is where YOU can draw the art for your Game Scene

  // YOUR CODE HERE
 line(20,50,20,200);
 line(20,50,700,50);
 line(20,500,700,500);
 line(700,500,700,50);
 line(20,300,20,500);
 line(120,150,120,400);
 line(120,150,250,150);
 line(120,400,250,400);
 line(200,200,400,200);
 line(200,350,400,350);
 line(500,120,500,225);
 line(500,275,500,400);
 line(500,120,350,120);
 line(500,400,350,400);
 line(600,90,600,130);
 line(600,130,650,130);
 line(600,450,600,380);
 line(600,380,650,380);
 line(630,170,630,235);
 line(630,340,630,265);

 
 

     textSize(32);
    fill(0, 0, 0);
    text("rescue the princes", 50, 30); 
    textSize(20);
    fill(0,0,0);
    text("becarefull with the guards",50,580);
  // Draw game instructions
 
     Bola(20, 250, em, en);
 
   
}

void drawFinalScene() {
  // black background
  background(0, 0, 0);
  // Draw game title
  textSize(32);
  fill(255, 255, 255);
  text("Game Over", 200, 100); 
  // Draw game instructions
  text("Press mouse to play again", 200, 150);
}

void draw() {
  // draw the current scene
  if (currentScene == 0) {
    drawIntroScene();
  } else if (currentScene == 1) {
    drawScene1();
  } else if (currentScene == 2) {
    drawScene2();
  } else if (currentScene < maxScenes) {
    drawFinalScene();
  }
  
  
}

void mousePressed() {
  if (currentScene < maxScenes - 1) {
    // go to next scene
    currentScene++;
  } else {
    // go back to the first scene
    currentScene = 0;
  }
}
  
    void keyReleased(){
    //ARROWS
     if(keyCode==38){em-=15;}//up
     if(keyCode==40){em+=15;}//down
     if(keyCode==37){en-=15;}//left
     if(keyCode==39){en+=15;}//right
     
     
     //AWSD
     if(keyPressed == true && keyCode==87){em-=15;}//up
     if(keyCode==83){em+=15;}//down
     if(keyCode==65){en-=15;}//left
     if(keyCode==68){en+=15;}//right
     
       
    }
    
    void keyPressed(){
        if(keyPressed == true && keyCode==87){em-=15;}//up
         if(keyCode==83){em+=15;}//down
     if(keyCode==65){en-=15;}//left
     if(keyCode==68){en+=15;}//right
    
    }
    