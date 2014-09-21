int gridSizeX = 90;
int gridSizeY = 55;

int numberOfRows;
int numberOfColumns;

void setup () {
  size(1000, 400); 
  background(0); 
  noStroke();
}

void draw () {
  background (0);
  if (second() < 10) {
    numberOfRows = 1;
  }
  if (second() < 20 && second() > 10) {
    numberOfRows = 2;
  }
  if (second() < 30 && second() > 20) {
    numberOfRows = 3;
  }
  if (second() < 40 && second() > 30) {
    numberOfRows = 4;
  }
  if (second() < 50 && second() > 40) {
    numberOfRows = 5;
  }
  if (second() < 60 && second() > 50) {
    numberOfRows = 6;
  }

  numberOfColumns = 10 + (second()-numberOfRows*10);


  for (int x = gridSizeX; x <= width - gridSizeX; x += gridSizeX) {
    for (int y = gridSizeY; y <= height - gridSizeY; y += gridSizeY) {
      noStroke();
      fill(100);
      rect(x-1, y-1, 3, 3);
      stroke(255, 50);
    }
  }

  println("rows: " + numberOfRows);
  println("columns: " + numberOfColumns);
}

