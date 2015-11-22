void setup() {
  background(221,255,255 );
  size(500, 400);
}
void draw(){
if (mousePressed) {
  fill(random(237));
  background(mouseX, mouseX,mouseX); 
  ellipse(mouseX, mouseY, mouseX, random(234));
}
else{
 fill(mouseX,mouseY,mouseX);
 background(random(255));
 }
 
  
    
    ellipse(200, 200, 300, 300);
  
}

