float tx = 0;
float ty = 1000;
float tx2 = 3000;
float ty2 = 2000;

void setup () {
  size (640, 360);
  noStroke();
  noCursor();
} 
void draw() {
  background (0);

  float nx = noise(tx);
  float ny = noise(ty);


  //draw main circle
  fill (255);
  ellipse (mouseX*nx, mouseY+ny, 25, 25);

  fill (0, 0, 255);
  float x = map(nx, 0, 1, 0, width);
  float y = map(ny, 0, 1, 0, height);
  if ((mouseX > (width/2))) {
    ellipse(x+(mouseX/2), (y+mouseY/10), 50, 50);
  } else {
    ellipse(x-(mouseX/2), (y-mouseY/10), 50, 50);
  }
  tx += 0.01;
  ty += 0.01;

  //draw 
  float nx2 = noise(tx2);
  float ny2 = noise(ty2);
  x = x + 200*nx2;
  y = y + 200*ny2;
  ellipse((mouseX/10)+x, (mouseY/10)+y, 25, 25);
  tx2 += 0.01;
  ty2 += 0.01;
}

