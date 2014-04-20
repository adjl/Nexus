// Modify these as preferred:
// --------------------------
final int SCREEN_WIDTH = 1366;
final int SCREEN_HEIGHT = 768;
final int NUMBER_OF_BEAMS = 20;
// --------------------------

final color BLACK = color(0, 0, 0);
Beam[] beams;

void setup() {
  size(SCREEN_WIDTH, SCREEN_HEIGHT);
  noStroke();
  beams = new Beam[int(random(NUMBER_OF_BEAMS)) + 1];
  for (int i = 0; i < beams.length; i++) {
    int direction = int(random(Direction.values().length));
    int distance = int(random(Distance.values().length));
    beams[i] = new Beam(Direction.values()[direction], Distance.values()[distance]);
  }
}

void draw() {
  background(BLACK);
  for (int i = 0; i < beams.length; i++) {
    beams[i].move();
    if (beams[i].isActive()) beams[i].draw();
  }
}

void keyPressed() {
  switch (key) {
    case 'q': // Quit
      exit();
      break;
  }
}