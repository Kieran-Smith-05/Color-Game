void intro() {
  image(gif[f], 0, 0, width, height);

  if (frameCount %2 == 0) f = f+1;
  if (f == numberOfFrames) f = 0;

  textSize(100);
  textAlign(CENTER, CENTER);
  fill(purple);
  text("Color Game", 400, 400);

  tactileRect(300, 600, 200, 100, purple);


  textAlign(CENTER, CENTER);
  fill(white);
  textFont(aAttackGraffiti);
  textSize(50);
  text("start", 400, 650);
  score = 0;
}

void introClicks() {
  mode = INTRO;
}
