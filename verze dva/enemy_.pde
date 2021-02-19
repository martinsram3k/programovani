class Enemy {
  float x, y, sx, sy;
  float maxSpeed;
  boolean isActive;
  
  Enemy() {
    x=random(0, width);
    y=random(0,height);
    sx = 0;
    sy = 0;
    isActive = false;
    maxSpeed = 10;
  }

  void display() {
    fill(255, 0, 0);
    circle(x, y, 10);
  }
  
  void activate(Player p){
    //aim

    float distX = p.x - x; 
    float distY = p.y - y;
    
    sx = map(distX, -width, width, -maxSpeed, maxSpeed);
    sy = map(distY, -height, height, -maxSpeed, maxSpeed);
    
    //run
    isActive = true;
  }
  
  void move() {
    if(isActive){
      x = x + sx;
      y = y + sy;
    }
  }
}
