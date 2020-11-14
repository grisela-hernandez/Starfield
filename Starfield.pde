Particle [] hen; 
webbing [] bands; 

void setup()
{
  size(400, 400); 
  background (0,0,0); 
  
  hen = new Particle[100]; 
  
  bands = new webbing[100]; 
  
  for (int i = 0; i < hen.length; i++){
  hen[i] = new Particle(); 
   hen[0] = new OddballParticle(); 
  }
  
  for (int k = 0; k < bands.length; k++){
    bands[k] = new webbing(); 
  }
}
void draw()
{
 background(0,0,0);
  frameRate(10); 
   for (int i = 0; i < hen.length; i++){
      
      hen[i].move();
      hen[i].show(); 
     
    }
    
    for (int k = 0; k < bands.length; k++){
      
      bands[k].move();
      bands[k].show(); 
     
    }
}

// the colored dots 
class Particle {

  double myX, myY, mySpeed, myAngle; 
  int partColor; 

   Particle(){

    myX = 200.0;
    myY = 200.0;
    mySpeed = (Math.random() * 180); 
    myAngle = (Math.random() * 180); 
    partColor = color((int)(Math.random()* 255), (int)(Math.random()* 255) + 15, 255); 

  }
  void move() {
    myX = myX + Math.cos(myAngle) * mySpeed; 
    myY = myY + Math.sin(myAngle) * mySpeed; 
  }

  void show(){
    
    fill(partColor); 
    ellipse ((float)myX, (float) myY, 5, 5); 
  }

}
// the lerge circle
class OddballParticle extends Particle //inherits from Particle
{
  OddballParticle(){
    
  }
  void move(){
    myX = myX + (Math.random() * 20) - 10; 
    myY = myY + (Math.random() * 20) - 10; 
  }
  void show(){
    
    ellipse((float)myX, (float)myY, 20, 20); 
  }
}

// the line streaks 
class webbing {
 
  double startX, startY, endX, endY, speed2; 
  int angle2; 
  
  webbing(){
  
   startX = 200; 
 startY = 200; 
 endX = 200; 
 endY = 200;
 
 speed2 = (Math.random()*20); 
 angle2 = (int) (Math.random()*180); 
  }

void move(){
stroke(255, 255, 255);
     line((float)startX, (float)startY, (float)endX, (float)endY);
}

     void show(){
       for (int y = 0; y < 10; y++) {
                 endX = startX + Math.cos(angle2) * speed2;
                 endY = startY + Math.sin(angle2) * speed2;

                line((float)startX, (float)startY, (float)endX, (float)endY);

                startX = endX;
                startY = endY; 
            }
     
}
}
