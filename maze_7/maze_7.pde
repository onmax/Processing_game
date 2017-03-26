 int currentScene;
int maxScenes;
float x;
float y;
//bola
int en;
int em;
float rn;
float rm;
//beast
float bm;
float bn;

int lastX;
int lastY;


//color
color bc=color(0,1,2);
boolean hit;
boolean galleryMode;
boolean wall;
int nextTimeToUpdateGallery;

boolean firstDrawScene1;
boolean firstDrawScene2;


void Bola( float em, float en){
  ellipseMode (RADIUS);
  fill(75, 252, 0);
  ellipse(en,em, rn, rm);
}

//void beast

void drawGalleryModeCountdown() {
  if (galleryMode) {
    int currentTime = millis();
    int timeUntilGalleryUpdate = (nextTimeToUpdateGallery - currentTime) / 1000;
    text("0:0"+timeUntilGalleryUpdate, 710, 25);
  }
}

//void map1(){
// line(20,30,20,450);
// line(20,30,700,30);
// line(20,500,700,500);
// line(700,500,700,20);
// line(20,450,300,450);
// line(300,450,300,300);
// line(350,450,650,450);
// line(350,450,350,200);
// line(300,300,150,300);
// line(150,300,150,100);
// line(75,100,75,350);
// line(80,400,200,400);
// line(200,400,200,350);
// line(200,250,300,250);
// line(650,450,650,250);
// line(650,250,600,250);
// line(550,250,400,250);
// line(500,250,500,400);
// line(600,300,600,400);
// line(550,400,400,400);
// line(425,300,425,350);
// line(550,200,550,150);
// line(550,150,700,150);
// line(600,150,600,80);
// line(550,30,550,100);
// line(450,150,350,150);
// line(450,150,450,80);
// line(450,80,400,80);
// line(350,100,250,100);
// line(350,100,350,80);
// line(250,100,250,80);
//}
  
  
 
  
void map2(){
  ////line(20,50,20,200);
 ////ine(20,50,700,50);
 ////ine(20,500,700,500);
 ////ine(700,500,700,50);
 ///ine(20,300,20,500);
 ////ine(120,150,120,400);
 ////ine(120,150,250,150);
 ////ine(120,400,250,400);
 ////ine(200,200,400,200);
 ////ine(200,350,400,350);
 ////ine(500,120,500,225);
 ////ine(500,275,500,400);
 ////ine(500,120,350,120);
 ////ine(500,400,350,400);
 ////ine(600,90,600,130);
 ////ine(600,130,650,130);
 ////ine(600,450,600,380);
 ////ine(600,380,650,380);
////ine(630,170,630,235);
 ////ine(630,340,630,265);

 
 
  
}


void setup() {
 
  
  // set frame rate to call draw() 30 times per second
  
  
  // set window size
  size(800, 600);
  // set background to black
  background(0, 0, 0);
   
  frameRate(60);
  // game always starts at Scene 0 (the intro scene)
  currentScene = 0;
  // there are only 4 scenes so far!
  maxScenes = 4;
  
 galleryMode= false;
 nextTimeToUpdateGallery= 0;
 
 hit=false;
  
  firstDrawScene1 = true;
  firstDrawScene2 = true;
}

void drawIntroScene() {
  // black background
  background(0, 0, 0);
  

  // Draw game title
  textSize(32);
  fill(255, 255, 255);
  text("w",200,390);
  text("s",200,435);
  text("a",175,415);
  text("d",225,415);
  
  textSize(20);
  
   text("up",200,350);
   text("left",140,415); 
   text("right",250,415);
   text("down",200,465);
 
  
  fill(240,5,5);
  ellipse(550,300,30,30);
  fill(5,240,234);
  ellipse(550,250,25,25);
  fill(240,5,228);
  ellipse(550,350,20,20);
  fill(250,202,8);
  ellipse(550,400,20,20);
  
  
  
  
  fill(250, 250, 250);
  
  text("you", 580,250);
  text("the beast", 580,300);
  text("the princess",580,350);
  text("guard",580,400);
  
  textSize(50);
  text("The maze", 200, 100); 
  // Draw game instructions
  textSize(30);
  text("Press mouse to continue", 200, 150);
  
  drawGalleryModeCountdown();
}

void drawScene1() {

  rn=10;
  rm=10;
  if (firstDrawScene1) {
    en=20;
    em=470;   
    firstDrawScene1 = false;
  }
  


//  en=20;
//  em=470;
  
  
  // white background
  background(255, 255, 255);
 strokeWeight(7);
 line(20,30,20,450);
 line(20,30,700,30);
 line(20,497,700,497);
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
  // This is where YOU can draw the art for your Game Scene
  
  // YOUR CODE HERE
 strokeWeight(0);
 
   //Title
    textSize(32);
    fill(0, 0, 0);
    text("Kill the beast", 50, 30); 
    // Draw game instructions
    //text("Press mouse to continue", 200, 150);
    
    
    
   
      Bola( em, en);
      
      
      drawGalleryModeCountdown();
   }

void drawScene2() {
  rn=10;
  rm=10;
  if (firstDrawScene2) {
    em=250;
    en=20;
    firstDrawScene2 = false;
  }
  // red background
  background(255, 255, 255);
  
 
  // This is where YOU can draw the art for your Game Scene
  strokeWeight(7);
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
  // YOUR CODE HERE
 strokeWeight(1);

     textSize(32);
    fill(0, 0, 0);
    text("rescue the princes", 50, 30); 
    textSize(20);
    fill(0,0,0);
    //text("becarefull with the guards",50,580);
  // Draw game instructions
  
   
     Bola( em, en);
 drawGalleryModeCountdown();
   
}

void drawFinalScene() {
  // black background
  background(0, 0, 0);
  // Draw game title
  textSize(80);
  fill(250, 8, 8);
  text("YOU'RE DEAD", 100, 300); 
  // Draw game instructions
  textSize(25);
  fill(255,255,255);
  text("Press mouse to play again", 200, 150);
  drawGalleryModeCountdown();
}

void draw() {

 
  // if we are in gallery mode, advance scene ONLY after waiting long enough (5 seconds)
  if (galleryMode) {
    // TIMING example: check if current time is now AFTER the time to update gallery
    //                 we have waited long enough
    if (millis() > nextTimeToUpdateGallery) {
      // update gallery by advancing scene
      advanceScene();
      // TIMING example: start waiting time again
      nextTimeToUpdateGallery = millis() + 5000;
    }
  }
  
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
// SKELETON example: advance to next scene, and return true unless we went back to beginning of game
boolean advanceScene() {
  if (currentScene < maxScenes - 1) {
     // go to next scene
    currentScene++;
    // true means scenes went forward
    return true;
  } else {
    // go back to the first scene
    currentScene = 0;
    // false means went back to introductory scene
    return false;
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
  

boolean isHit(color bc){
       float bcRed = red(bc);
       float bcBlue = blue(bc);
       float bcGreen = green(bc);
       print("\nPoints:",em,",",en);
       
        print("\nbc=",bc); 
        print("\nbred=",bcRed);
        print("\nbblue=",bcBlue);
        print("\ngreen=",bcGreen);
        
      if( bcRed == 0 && bcBlue == 0 && bcGreen == 0) { 
          print("bounce");
          println(bc);  
          return true;

         }
       else{
         return false;
       }
  
}

    void keyPressed(){
      
      hit = isHit(get(en,em-10));
       if (!hit) {
         hit = isHit(get(en-10,em));
       }
       if (!hit) {
       hit = isHit(get(en-10,em));
       }
   if (!hit) {
       hit = isHit(get(en-10,em));
       }
       
    
 
    if (!hit) {
  //ARROWS
       if(keyCode==38){em-=5;}//up
       if(keyCode==40){em+=5;}//down
       if(keyCode==37){en-=5;}//left
       if(keyCode==39){en+=5;}//righ
      //AWSD
       if(keyCode==87){em-=5;}//up
       if(keyCode==83){em+=5;}//down
       if(keyCode==65){en-=5;}//left
       if(keyCode==68){en+=5;}//righ
       
       //if( em< -465){
       //    em=114;}
       //if (en < -10) {
       //    en=700;}
    }else{
    en=20;
    em=470;   
      hit=false;
    }
     //<>// //<>// //<>//
         
         
         
      
   
        if (key == 'g') {
    // TIMING example: switch gallery display mode back on or back off
    galleryMode = !galleryMode;
    // TIMING example: record the current time
    int currentTime = millis();
    // TIMING example: gallery will transition 500 milliseconds = 0.5 seconds from now
    nextTimeToUpdateGallery = currentTime + 500;
    
  }
    
    

}