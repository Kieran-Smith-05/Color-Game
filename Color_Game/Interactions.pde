void mousePressed() {

  if (mode == GAMEOVER) {
    if (touchingRect(500, 600, 200, 100)) {
      mode = INTRO;
      score = 0;
    }
  }
  if (mode == GAME) {
    if (touchingRect(0, 0, 400, 800)) {
      if (randomWord == randomColor) {
        success();
      }
      if (randomWord != randomColor) {
        fail();
      } else {
       newPuzzle();
      }
    }
    if (touchingRect(400, 0, 400, 800)) {
      if (randomWord != randomColor) {
        success();
      }
      if (randomWord == randomColor) {
        fail();
      } else {
       newPuzzle();
      }
    }
  }
  if (mode == INTRO) {
    if (touchingRect (300, 600, 200, 100)) {
      mode = GAME;
      counter = 0;
      text = 100;
      newPuzzle();
    }
  }
}

void keyPressed() {

  if (mode == GAME) {
    if (keyCode == LEFT) {
      if (randomWord == randomColor) {
        success();
      }
      if (randomWord != randomColor) {
        fail();
      } else {
        newPuzzle();
      }
    }
    if (keyCode == RIGHT) {
      if (randomWord != randomColor) {
        success();
      }
      if (randomWord == randomColor) {
        fail();
      } else {
       newPuzzle();
      }
    }
  }
}


void success() {
  score = score +1;
  random = (int) random(0, 2);
  counter = 0;
  text = 100;
  SUCCESS.rewind();
  SUCCESS.play();
}

void fail() {
  mode = GAMEOVER;
  FAILURE.rewind();
  FAILURE.play();
}

void newPuzzle() {
  randomWord = (int) random(0, 5);
  randomColor = (int) random(0, 5);
}


boolean touchingRect (int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    return true;
  } else {
    return false;
  }
}



void tactileRect (int x, int y, int w, int h, color f) {
  fill(f);
  if (touchingRect(x, y, w, h)) {
    stroke(white);
  } else {
    stroke(blk);
  }
  rect(x, y, w, h);
}
