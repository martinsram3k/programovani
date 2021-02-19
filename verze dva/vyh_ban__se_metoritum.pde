Player player;
Enemy enemy;
boolean moveLeft, moveRight, moveDown, moveUp, playeri, die, death, fps, enemyi;
Timer timer2;

void setup() {
  size (1125, 675);
  player = new Player();
  enemy = new Enemy();
  moveLeft=false;
  moveDown=false;
  moveRight=false;
  moveUp=false;
  playeri=true;
  die=false;
  death=false;
  fps=false;
  enemyi=true;
  timer2 = new Timer(5);
}
void draw () {
  background(255);
  player.keyPressed();
  
  if (timer2.run()){
    enemy.activate(player);    
  }
  
  enemy.move(); 
  player.display();
  if (playeri==true) {
    player.display();
    player.reset();
  }
  if (moveLeft==false) {
  }
  if (moveLeft==true) {
    player.movex();
  }
  if (moveDown==false) {
  }
  if (moveRight==true) {
    player.movexl();
  }
  if (moveDown==true) {
    player.movey();
  }
  if (moveUp==false) {
  }
  if (moveUp==true) {
    player.moveyl();
  }
  if (fps==true) {
    fps();
  }
  if (enemyi==true) {
    enemy.display();
  }
  
  
  
}
