player player;
enemy enemy;
Timer timer2;
boolean movexi, movexil, moveyi, moveyil, playeri, die, death, fps, enemyi;

void setup() {
  size (1125, 675);
  player = new player();
  enemy = new enemy();
  movexi=false;
  moveyi=false;
  movexil=false;
  moveyil=false;
  playeri=true;
  die=false;
  death=false;
  fps=false;
  enemyi=true;
  timer2 = new Timer(3);
}
void draw () {
  background(255);
  player.keyPressed();
  if (playeri==true) {
    player.display();
    player.reset();
  }
  if (movexi==false) {
  }
  if (movexi==true) {
    player.movex();
  }
  if (moveyi==false) {
  }
  if (movexil==true) {
    player.movexl();
  }
  if (moveyi==true) {
    player.movey();
  }
  if (moveyil==false) {
  }
  if (moveyil==true) {
    player.moveyl();
  }
  if (fps==true) {
    fps();
  }
  if (enemyi==true) {
    enemy.display();
  }
}
