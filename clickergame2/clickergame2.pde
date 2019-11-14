//mode

int mode; //name your modes--easier. modes to divide up void draw. final locks int

final int INTRO = 0;

final int GAME = 1;

final int PAUSE = 2; 

final int GAMEOVER = 3;



//target

float x, y, vx, vy;

int score, lives;



void setup() {

  x = 400;

  y = 400;

  //vx/vy changes movement of target

  vx = random(-3,3);

  vy = random(-3,3);

  

  score = 0;

  lives = 3;

  

  size(800, 800);

  mode = INTRO ;

  textAlign(CENTER, CENTER); //central text

  rectMode(CENTER);

  

}



void draw() {

  if (mode == INTRO) {

    intro();

    

  } else if (mode == GAME) {

    game();

    

  } else if (mode == PAUSE) {

    pause();

  } else if (mode == GAMEOVER) {

    gameover();

  } else {

  println("Error: Mode = " + mode);

  }

}
