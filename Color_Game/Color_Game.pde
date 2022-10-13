//Kieran Smith
//Sept 26


int mode;
final int INTRO = 0;
final int GAME = 1;
final int GAMEOVER = 2;


import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
//import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer song;
AudioPlayer FAILURE;
AudioPlayer SUCCESS;


PFont aAttackGraffiti;
PImage[] gif;
int numberOfFrames;
int f;
int score;
int counter;
float text;
int bestScore;


color purple = #9B5DE5;
color pink = #F15BB5;
color yellow = #FEE440;
color blue = #00BBF9;
color green = #379634;
color blk = #000000;
color white = #FFFAFA;
color bkg = #8D99AE;


void setup() {
  numberOfFrames = 10;
  gif = new PImage[numberOfFrames];
  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage ("frame_"+i+"_delay-0.03s.gif");
    i = i+1;
  }
  size(800, 800);
  counter = 0;

aAttackGraffiti = createFont("aAttackGraffiti.ttf", 80);

  minim = new Minim(this);
  song = minim.loadFile("Song.mp3");
  song.loop();
  FAILURE = minim.loadFile("FAILURE.wav");
  SUCCESS = minim.loadFile("SUCCESS.wav");
  mode = INTRO;
}



void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == GAMEOVER) {
    gameOver();
  } else {
    println("Mode Error: mode is" + mode);
  }
}
