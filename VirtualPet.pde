int centerX;
int centerY;
int bodyColor;
int wingColor;
int wingWidth = 150;
int wingHeight = 100;

void setup(){
  size(300,300);
  background(50,160,200);
}

void draw(){
  //shadow
  centerX = 125;
  centerY = 170;
  bodyColor = color(0,90,120);
  wingColor = color(0,90,120);
  butterfly(centerX,centerY,bodyColor,wingColor);
  
  //Main body
  centerX = 150;
  centerY = 150;
  bodyColor = color(255,255,255);
  wingColor = color(255,160,0);
  butterfly(centerX,centerY,bodyColor,wingColor);
}

void butterfly(int centerX,int centerY,int bodyColor,int wingColor){
  //wings
  noStroke();
  fill(wingColor);
  {
    //top left
    arc(centerX-wingWidth/2,centerY,wingWidth,wingHeight,PI+HALF_PI,TWO_PI,OPEN);
    arc(centerX,centerY-wingHeight/2,wingWidth,wingHeight,HALF_PI,PI,OPEN);
  
    //bottom left
    arc(centerX,centerY+wingHeight/2,wingWidth,wingHeight,PI,PI+HALF_PI,OPEN);
    arc(centerX-wingWidth/2,centerY,wingWidth,wingHeight,0,HALF_PI,OPEN);
    
    //top right
    arc(centerX+wingWidth/2,centerY,wingWidth,wingHeight,PI,PI+HALF_PI,OPEN);
    arc(centerX,centerY-wingHeight/2,wingWidth,wingHeight,0,HALF_PI,OPEN);
    
    //bottom right
    arc(centerX,centerY+wingHeight/2,wingWidth,wingHeight,PI+HALF_PI,TWO_PI,OPEN);
    arc(centerX+wingWidth/2,centerY,wingWidth,wingHeight,HALF_PI,PI,OPEN);
  }
  
  //body and head
  noStroke();
  fill(bodyColor);
  ellipse(centerX,centerY,5,50); //body
  ellipse(centerX,centerY-25,10,10); //head
  
  //antennas
  noFill();
  stroke(bodyColor);
  arc(centerX-15,centerY-25,25,100,PI+HALF_PI,TWO_PI); //left
  arc(centerX+15,centerY-25,25,100,PI,PI+HALF_PI); //right
}
