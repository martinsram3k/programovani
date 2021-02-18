class player {
  float x;
  float y;
  float sx;
  float sy;

  player() {
    sx = 12;
    sy = 12;
    x  = 562;
    y  = 337;
  }

  void movex() {
    x += sx;
  }

  void movexl() {
    x -= sx;
  }

  void movey() {
    y += sy;
  }
  void moveyl() {
    y -= sy;
  }
  void display() {
    fill(0, 255, 0);
    circle(x, y, 100);
  }



  void reset() {  
    if (x>1125) {
      x=562;
      y=337;
    }
    if (y>675) {
      x=562;
      y=337;
    }    
    if (x<0) {
      x=562;
      y=337;
    }
    if (y<0) {
      x=562;
      y=337;
    }
  }



  void keyPressed() {
    if (key =='w') {
      moveyil=true;
      moveyi=false;
      movexi=false;
      movexil=false;
    }
    if (key =='s') {
      moveyil=false;
      moveyi=true;
      movexi=false;
      movexil=false;
    }
    if (key =='a') {
      moveyil=false;
      moveyi=false;
      movexi=false;
      movexil=true;
    }
    if (key =='d') {
      moveyil=false;
      moveyi=false;
      movexi=true;
      movexil=false;
    }
    if (key ==' ') {
      moveyil=false;
      moveyi=false;
      movexi=false;
      movexil=false;
    }
  }
}
