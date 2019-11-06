void intro() {
  background(255);
  
  //button
  strokeWeight(4);
  stroke(0);
  fill(15,64,2);
  ellipse(400, 400, 300, 100);
  
  fill(255); //change textcolour
  textSize(32); //up to 72
  text("Start Game", 400, 400 ); //text has to be in double quotes
  
  
}

void introClicks() {
  if (mouseX > 250  && mouseX < 550  && mouseY > 350 && mouseY < 450)
  mode = GAME;
}
