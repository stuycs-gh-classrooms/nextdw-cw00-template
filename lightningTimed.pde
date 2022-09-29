void setup() {
  size (500, 500);
  background(0);
  frameRate(30);   
}//setup

void draw() {
  if (frameCount % 30 == 0) {
    drawLightning(int(random(0, width)), 0, 75);
    println("strike: " + frameCount);
  }//if
}//draw


void drawLightning(int x, int y, int numParts) {
  
  stroke(#FCF67A);
  strokeWeight(4);
  int count = 0;
  int nextx = x;
  int nexty = y;
  float ystep = float(height)/numParts;
  while (count < numParts) {
    nextx = int(random(x - 15, x + 15));
    nexty = int(ystep * count);
    line(x, y, nextx, nexty);
    x = nextx;
    y = nexty;
    count++;
  }//while  
}//drawLightning
