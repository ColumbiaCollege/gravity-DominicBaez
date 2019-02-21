// variables used to create program
PImage img;
// location for image starting position
float xpos, ypos;
// speed that the image will move at on the x and y plane, for every 5 that it moves across it will move 3 down
float xspeed=5;
float yspeed=3;
// direction that the image will move, down and left
int xdirection =-1;
int ydirection =1;
// true/false statement that activates when image passes a certain x point and creates a crater
boolean crater= false;
// creates window and loads the image and how the image loads, also declares what the variables xpos and ypos are
void setup() {
  size (700, 500);
  img = loadImage ("meteor.png");
  imageMode(CENTER);
  xpos= width;
  ypos=0;
}

void draw() {
  // gives color to the window as a light blue
  background(#1D8CDE);
  // if there is no crater then a house will be drawn
  if (!crater) {
    fill(#BCC62C);
    rect(50, 300, 50, 50);
    fill(#674E3D);
    rect(80, 330, 10, 20);
    fill(#C63030);
    triangle(50, 300, 100, 300, 75, 265);
  } 
  // equations used to enable the image to move
  xpos=xpos+(xspeed*xdirection);
  ypos=ypos+(yspeed*ydirection);
  // displays the image with these conditions
  image(img, xpos, ypos, img.width/3, img.height/3);
  // when the image passes 0 going left it will reset the image at the given position
  if (xpos<0) {
    xpos = width;
    ypos = 0;
    // redraws house everytime that the image passes 0 going left
    crater = false;
  }
  // creates a green square that serves as the ground in the display
  fill(#29B23F);
  rect(0, 350, 700, 200);
  // if the image does meet the conditions set below, it will create a brown ellipse that serves as a crater
  if (ypos>350) {
    crater = true;
    fill(#674E3D);
    ellipse(75, 370, 90, 35);
  }
}
