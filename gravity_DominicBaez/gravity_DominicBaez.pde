PImage img;
float xpos, ypos;
float xspeed=5;
float yspeed=3;
int xdirection =-1;
int ydirection =1;
boolean crater= false;
void setup() {
  size (700, 500);
  img = loadImage ("meteor.png");
  imageMode(CENTER);
  xpos= width;
  ypos=0;
}

void draw() {
  background(#1D8CDE);
  if (!crater) {
    fill(#BCC62C);
    rect(50, 300, 50, 50);
    fill(#674E3D);
    rect(80, 330, 10, 20);
    fill(#C63030);
    triangle(50, 300, 100, 300, 75, 265);
  }
  xpos=xpos+(xspeed*xdirection);
  ypos=ypos+(yspeed*ydirection);
  image(img, xpos, ypos, img.width/3, img.height/3);
    fill(#29B23F);
  rect(0, 350, 700, 200);
  if (ypos>350) {
    crater = true;
    fill(#674E3D);
    ellipse(75, 370, 90, 35);
  }
}
