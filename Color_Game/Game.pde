int random = (int) random(0, 2);
int randomWord = (int) random(0, 5);
int randomColor = (int) random(0, 5);

String[] words = {"purple", "pink", "yellow", "blue", "green"};
color[] colors = {purple, pink, yellow, blue, green};


void game() {
  background(bkg);

  counter = counter +1;
  println(text);
  if (counter == 0) {
    text = 100;
  }
  if (counter < 200) {
    text = text -0.5;
  }
  if (counter == 200) {
    mode = GAMEOVER;
  }

  if (random == 1) {
    randomWord = randomColor;
  }
  while (random == 0 && randomWord == randomColor) {
    randomWord = (int) random(0, 5);
    randomColor = (int) random(0, 5);
  }


  tactileRect(0, 0, 400, 800, white);

  tactileRect(400, 0, 400, 800, blk);

  textSize(100);
  textAlign(CENTER, CENTER);
  fill(blk);
  textFont(aAttackGraffiti);
  text("MATCH", 200, 100);

  textSize(100);
  textAlign(CENTER, CENTER);
  fill(white);
  text("DON'T", 600, 100);
  text("MATCH", 600, 250);


  textSize(text);
  textAlign(CENTER, CENTER);
  fill(colors[randomColor]);
  text(words[randomWord], width/2, height/2);
}


void gameClicks() {
  mode = GAME;
}
