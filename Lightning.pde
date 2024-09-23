int startY = 0;
int startX = 200;
int endY = 0;
int endX = 200;
float r = (float)(Math.random() * 55) + 200;
float g = (float)(Math.random() * 55) + 200;
float b = (float)Math.random() * 0;
int bgColor = 20;
int resetBgColor = 20;
void setup()
{
  size(400,400);
  background(bgColor);
  strokeWeight(5);
}
void draw()
{

stroke(r, g, b);
if (bgColor > 20){

background(bgColor);
bgColor -= 10;
}
//while (endX > 0 && endX < 400){
  endY = startY + (int)(Math.random() * 10);
  endX = startX + (int)(Math.random() * 19) - 9;
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
}
//}
void mousePressed(){
startY = 0;
startX = 200;
endY = 0;
endX = 200;
r = (float)(Math.random() * 55) + 200;
g = (float)(Math.random() * 55) + 200;
b = (float)Math.random() * 0;
}

void keyPressed(){
  
if (key == 'r'){
bgColor = 255;
background(bgColor);
}
}
