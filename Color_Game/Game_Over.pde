void gameOver() {
  background(purple);
  
  stroke(0);
  textSize(100);
  textAlign(CENTER, CENTER);
  fill(white);
  textFont(aAttackGraffiti);
  text("Game Over", 400, 200);

  textSize(75);
  textAlign(CENTER, CENTER);
  fill(white);
  text("Score: "+ score, 200, 400);

  tactileRect(500, 600, 200, 100, pink);

  textSize(50);
  textAlign(CENTER, CENTER);
  fill(white);
  text("Again?", 605, 640);

  if (score > bestScore) {
    bestScore = score;
  }

  textSize(75);
  textAlign(CENTER, CENTER);
  fill(white);
  text("Highscore:"+ bestScore, 250, 500);
}

void gameOverClicks() {

}
