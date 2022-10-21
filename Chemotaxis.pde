Heart tim, cherry;
Heart [] hearts = new Heart[25];
int x = 150;

void setup()
{
  size(500,500);
  tim = new Heart();
  cherry = new Heart();
  for(int i = 0; i < hearts.length; i++){
    hearts[i] = new Heart(255,(int)(Math.random()*256),(int)(Math.random()*500),(int)(Math.random()*500));
  }
  frameRate(40);
}

void draw()
{
  background(#9acafc);
  tim.show();
  tim.walk();
  cherry.show();
  cherry.walk();
  for(int i = 0; i < hearts.length; i++){
    hearts[i].walk();
    hearts[i].show();
  }
}

class Heart
{
  color myC, myR;
  float myX, myY;
  Heart()
  {
    myX = myY = 250;
    myR = 255;
    myC = (int)(Math.random()*256);
  }
  
  Heart(color r, color c, float x, float y){
    myR = r;
    myC = c;
    myX = x;
    myY = y;
  }
  void walk()
  {
    //myX = myX + (int)(Math.random()*7)-3;
    //myY = myY + (int)(Math.random()*7)-3;
   if(mouseX > myX){
     myX = myX + (int)(Math.random()*7)-1;
  }
   else{
     myX = myX + (int)(Math.random()*7)-4;
  }
    if(mouseY > myY){
    myY = myY + (int)(Math.random()*7)-1;
  }
  else{
    myY = myY + (int)(Math.random()*7)-4;
  }
  }
  void show()
  {
    fill(#ffffff);
    //right wing
    beginShape();
    curveVertex(myX+20,myY+5);
    curveVertex(myX+20,myY+5);
    curveVertex(myX+25,myY-5); 
    curveVertex(myX+23,myY+10);
    curveVertex(myX+30,myY+15);
    curveVertex(myX+10,myY+20);
    curveVertex(myX+10,myY+20);
    endShape();
    //left wing
    beginShape();
    curveVertex(myX-20,myY+5);
    curveVertex(myX-20,myY+5);
    curveVertex(myX-25,myY-5); 
    curveVertex(myX-23,myY+10);
    curveVertex(myX-30,myY+15);
    curveVertex(myX-10,myY+20);
    curveVertex(myX-10,myY+20);
    endShape();
    //heart
    fill(255,myC,myC);
    beginShape();
    curveVertex(myX,myY); 
    curveVertex(myX,myY);
    curveVertex(myX+10,myY-5);
    curveVertex(myX+20,myY+5); 
    curveVertex(myX,myY+25); 
    curveVertex(myX-20,myY+5);
    curveVertex(myX-10,myY-5);
    curveVertex(myX,myY);
    curveVertex(myX,myY);
    endShape();
  }
}
