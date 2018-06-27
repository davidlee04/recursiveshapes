void setup(){
  size(500, 500);
}

void draw(){
  fill(#0000FF);
  recursiveRect(400, 125, 0, 0, 4);
  fill(#FF0000);
  recursiveEllipse(200, 400, 0, 0, 16);
  
  //BONUS
  fill(#00FF00);
  recursiveTriangle(0, 0, 200, 0, 100, 173, 6);
}

void recursiveRect(int x, int y, int w, int h, int scale){
  //fill me out
  if(scale > 0) {
    x-=25;
    y-=25;
    w+=50;
    h+=50;
    scale--;
    recursiveRect(x, y, w, h, scale);
    rect(x, y, w, h);
  }
}

void recursiveEllipse(int x, int y, int w, int h, int scale){
  //me too
  if(scale > 0) {
   w+=17;
   h+=12;
   scale--;
   recursiveEllipse(x, y, w, h, scale);
   ellipse(x, y, w, h);
  }
}

void recursiveTriangle(int x1, int y1, int x2, int y2, int x3, int y3, int scale){
  if(scale > 0) {
   triangle(x1, y1, x2, y2, x3, y3);
   x1+=20;
   y1+=10;
   x2-=20;
   y2+=10;
   y3-=15;
   scale--;
   recursiveTriangle(x1, y1, x2, y2, x3, y3, scale);
  }
}