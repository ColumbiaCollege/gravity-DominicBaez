PImage img;
float xpos,ypos;
float xspeed=5;
float yspeed=3;
int xdirection =-1;
int ydirection =1;
void setup() {
  size (700, 500);
  img = loadImage ("meteor.png");
  imageMode(CENTER);
  xpos= width;
  ypos=0;
}

void draw() {
  background(#1D8CDE);
  xpos=xpos+(xspeed*xdirection);
  ypos=ypos+(yspeed*ydirection);
  image(img, xpos, ypos, img.width/3, img.height/3);
  
  fill(#29B23F);
  rect(0, 350, 700, 200);
}
