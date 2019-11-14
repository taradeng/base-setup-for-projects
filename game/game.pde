void game() {
  background(0, 255, 0);
  
  fill(0);
  textSize(40);
  text("Score: " + score, 100, 100);
  text("Lives: " + lives, 100, 150);
  
  //target
  strokeWeight (4);
  fill(245);
  ellipse(x, y, 100, 100);
  
  //movement
  x = x + vx;
  y = y + vy;
  
  //bounce top or bottom 
  if (y < 50 || y > 800) vy = vy * -1;
  if (x < 50 || x > 800) vx = vx * -1;
  //50 makes bounce off edge of circle
}

void gameClicks(){
  //centre of target is x, y. 50 is radius
  if (dist(mouseX, mouseY, x, y) < 50) {
   score = score + 1;
   //speeds up each time you click: exponential
   vy = vy * 1.1; 
   vx = vx * 1.1;
   //also can use "score++;" (means + 1 bc used a lot)
  } else {
    lives = lives - 1;
    if (lives == 0)
    // if if statement only has one, can delete braces
     mode = GAMEOVER; 
  
  }
}
