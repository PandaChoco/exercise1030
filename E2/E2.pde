PImage sun ;
PImage earth ;
PImage moon ;
float a=0,b=0;

void setup (){
  
  size(600,600);
  sun = loadImage("sun.png");
  earth = loadImage("earth.png");
  moon = loadImage("moon.png");

}
void draw(){
  background(255);
  pushMatrix();
  imageMode(CENTER);
  image(sun,width/2,height/2);
  translate(width/2,height/2);
  a = map(mouseX,0,width,HALF_PI,HALF_PI+TWO_PI);
  rotate(a);
  image(earth,0,height/2);
  degrees(b);
  translate(0,(300));
  rotate(b);
  image(moon,-20,50);
  popMatrix();
  b+=0.1;
}
