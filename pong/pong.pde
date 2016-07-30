//Start with a new sketch that contains setup() and draw() methods. Ask your teacher if you don't know how to do this. The suggestions under each step should help you with your program
PImage backgroundImage; 
int speed =  10;
int x = 50;
int y = 100;
int speedup =10;
int paddleLength = 200;
int paddleHeight=200;
//int paddleY = 750;
int paddleX = mouseX;
int x2 = 200;
int pX2 = x2;
int pY2 = 50;
int paddleWidth = 100;
int y2 = 50;
int lefty=400;
int righty=400;
void setup(){
  size(800, 800);
  
}
void draw(){
  pX2 = x2;
  if(keyPressed){
   if(key == 'w'){
     lefty-=  10 ;
   } 
  }
 
  if(keyPressed){
   if(key == 's'){
     lefty+= 10 ;
   } 
  }
  if(keyPressed){
   if(keyCode == UP){
     righty-= 10 ;
   } 
  }
  if(keyPressed){
   if(keyCode == DOWN){
     righty+=  10 ;
   } 
  }
  paddleX =mouseX;
  pX2 = x2;
   background(20, 255, 20);
   ellipse(x,y, 20,20);
   fill(0,100,100);
   stroke(0,255,255);
   x = x + speed;
   y = y + speedup;
  if(x > 800){
    
    speed = speed *-1;
    

}
if(x<0){
  speed= speed/ -1;
  
}
if(y>800){
 speedup = speedup *-1; 
}
if(y<0){
 speedup = speedup /-1 ;
}
rect(750,righty, 20, 200);
 //rect(x2, 50 , 200, 20);
 rect(30,lefty,20,200);
if(intersects( y,  x,  lefty,  paddleX,  paddleWidth, paddleHeight,0)){
speedup = speedup /-1;

}
if(intersects( y2,  x2,  righty, pX2,  paddleWidth ,paddleHeight,1)){
speedup = speedup /-1;

}
/*1.Make a canvas for your game.
  size(width, height)      //in setup method
  background(red, green, blue)  //in draw method
2. Draw a ball on the screen.
  ellipse(width, height, )  //in draw method
  fill(red, green, blue)    //in draw method
  stroke(red, green, blue)    //in draw method
3. Make the ball move across the screen (left to right).
  //make a variable for the ball's X position and change it in the draw method.
4. Change the speed of the ball.
  //make a variable for the speed of the ball in the X direction (from left to right).
  //changing this variable should change the speed of your ball
5. Bounce the ball off the walls.
  width
  println(output)
  
6. Do the same in the Y (up and down) direction.
  height
7. Make a sound when the ball falls on the ground.
  //drop the sound file onto your sketch
  import ddf.minim.*;       //at the very top of your sketch
  Minim minim;        //at the top of your sketch
  AudioSample sound;      //at the top of your sketch
  minim = new Minim (this);    //in the setup method
  sound = minim.loadSample("BD.mp3", 128);//in the setup method
  sound.trigger();        //in draw method (when the ball hits the bottom)
8. Add a background image for your game.
PImage backgroundImage;         //at the top of your sketch
backgroundImage = loadImage("image.jpg");  //in the setup method
image(backgroundImage, 0, 0);      //in draw method image(backgroundImage, 0, 0, width, height);    //if you want to resize
9. Draw a paddle at the bottom of the screen
  rect(x, y, width, height);
10. Make the paddle move over and back with the mouse.
  mouseX
11. Make the ball change Y direction when it hits the paddle. Figure it out by yourself, or use this method:
boolean intersects(int ballX, int ballY, int paddleX, int paddleY, int paddleLength) 
if (ballY > paddleY && ballX > paddleX && ballX < paddleX + paddleLength)
return true;
else 
return false;
}*/
}
boolean intersects(int ballY, int ballX, int paddleY, int paddleX, int paddleWidth, int paddleHeight,int paddleD) {
  if(paddleD==0){
  if (ballX < paddleX + paddleWidth && ballX>paddleX && ballY > paddleY && ballY < paddleY + paddleHeight)
return true;
else 
return false;
  }
   else{
  if (ballX >paddleX - paddleWidth && ballX<paddleX && ballY > paddleY && ballY < paddleY + paddleHeight)
return true;
else 
return false;
  }

}
