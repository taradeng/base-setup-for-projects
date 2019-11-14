void intro() {
  //background(232,172,12); dark yellow
  background(255,229,69);
  
  //button
  strokeWeight(4);
  stroke(10);
  fill(15,64,2);
  ellipse(400, 400, 300, 100);
  
  fill(#C9E399); //change textcolour
  textSize(32); //up to 72
  text("Start Game", 400, 395 ); //text has to be in double quotes
  
  
}

void introClicks() {
  if (mouseX > 250  && mouseX < 550  && mouseY > 350 && mouseY < 450)
  mode = GAME;
}
