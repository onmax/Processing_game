float whatX;
float whatY;

boolean goingRigh=true; 
boolean goingLeft=false;
boolean goingDown=false;
boolean goingUp=false;
float ca;float cb;float cc;

boolean changeColorOfEyes=false;

float lastMouseX;
float lastMouseY;

float em=0;
float en=0;

float a;float b; float c;
boolean background=false;


void Phineas(float xChange, float ychange){
 
  if (background){
    a=255;b=255;c=255;
  }else{
    a=3;b=20;c=82;
  }
  background(a,b,c);
  fill(255,195,134);
  triangle(10,10,200,200,500,100);

    background(a,b,c);
  float myRandomNumber= xChange;
  fill(ca,cb,cc);
  ellipse(550+myRandomNumber, 120+ychange, 85, 85);
  
  //eyes
  if (changeColorOfEyes) {
 //changeColorOfEyes=false;
 ca=255;cb=255;cc=255;
  } else {
  //changeColorOfEyes=true;
  ca=225;cb=195;cc=134;
  }

  ellipse(565+myRandomNumber, 120+ychange, 20, 25);
  
  fill(255, 195, 134);
  triangle(850+myRandomNumber, 50+ychange, 700+myRandomNumber, 500+ychange, 300+myRandomNumber, 200+ychange);  
  
  fill(ca , cb, cc);
  ellipse(640+myRandomNumber, 100+ychange, 150, 85);
  
  fill(ca,cb ,cc );
  ellipse(670+myRandomNumber, 100+ychange, 20, 25);
    
    fill(255,195,134);
  curve(300+myRandomNumber,300+ychange,566+myRandomNumber, 400+ychange, 680+myRandomNumber, 270+ychange, 700+myRandomNumber, 150+ychange);
  curve(580+myRandomNumber, 210+ychange,480+myRandomNumber, 335+ychange, 680+myRandomNumber, 270+ychange, 700+myRandomNumber, 300+ychange);
  
  fill(250,0,0);
  quad(650+myRandomNumber+en, 15+ychange+em,700+myRandomNumber+en, 20+ychange+em,690+ myRandomNumber+en, 30+ychange+em, 650+myRandomNumber+en, 30+ychange+em); 
  quad(535+myRandomNumber+en, 30+ychange+em, 560+myRandomNumber+en, 35+ychange+em, 570+myRandomNumber+en, 40+ychange+em,530+myRandomNumber+en,40+ychange+em);
  
  
}

 


void setup() {
  size(1200, 800);
  frameRate(1000);
  whatX=0;
  whatY=0;
    goingRigh=true; 
     goingLeft=false;
     goingDown=false;
     goingUp=false;

    mousePressed=true;


}  


void draw() {
  
  // going right
  if (goingRigh) {
    if(whatX<300) {
      whatX=whatX+1;
    } else {
      goingRigh=false;
      goingDown=true;
    }
  }
  
  // going down
  if (goingDown){
    if(whatY<300) {
      whatY=whatY+1;
    } else {
     goingDown=false;
     goingLeft=true;
  } 
  }
   if(goingLeft){
       if(whatX>50){
         whatX=whatX-1;
       } else{
         goingLeft=false;
         goingUp=true;
       }
   }
  
  if(goingUp){
      if(whatY>50){
        whatY=whatY-1;
      } else{
        goingUp=false;
        goingRigh=true;
   }
   
  }
      
   
 
   
  

  Phineas(whatX, whatY);
  }
  
  void mouseClicked(){
    changeColorOfEyes = !changeColorOfEyes;
    background=!background;
    lastMouseX=mouseX;
    lastMouseY=mouseY;
  }    
    
    
    
    void keyReleased(){
    
     if(keyCode==38){em-=5;}
     if(keyCode==40){em+=5;}
     if(keyCode==37){en-=5;}
     if(keyCode==39){en+=5;}
    

    
    
    }
    
    