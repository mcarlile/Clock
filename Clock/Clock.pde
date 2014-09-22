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

  //  if (numberOfRows == 2) {
  //    for (int x = gridSizeX; x <= gridSizeX*10; x += gridSizeX) {
  //      for (int y = gridSizeY; y <= gridSizeY*1; y += gridSizeY) {
  //        noStroke();
  //        fill(255);
  //        rect(x-1, y-1, 5, 5);
  //        stroke(255, 50);
  //      }
  //    }
  //  }
  //  if (numberOfRows == 3) {
  //    for (int x = gridSizeX; x <= gridSizeX*10; x += gridSizeX) {
  //      for (int y = gridSizeY; y <= gridSizeY*2; y += gridSizeY) {
  //        noStroke();
  //        fill(255);
  //        rect(x-1, y-1, 5, 5);
  //        stroke(255, 50);
  //      }
  //    }
  //  }
  //
  //  if (numberOfRows == 4) {
  //    for (int x = gridSizeX; x <= gridSizeX*10; x += gridSizeX) {
  //      for (int y = gridSizeY; y <= gridSizeY*3; y += gridSizeY) {
  //        noStroke();
  //        fill(255);
  //        rect(x-1, y-1, 5, 5);
  //        stroke(255, 50);
  //      }
  //    }
  //  }
  //
  //  if (numberOfRows == 5) {
  //    for (int x = gridSizeX; x <= gridSizeX*10; x += gridSizeX) {
  //      for (int y = gridSizeY; y <= gridSizeY*4; y += gridSizeY) {
  //        noStroke();
  //        fill(255);
  //        rect(x-1, y-1, 5, 5);
  //        stroke(255, 50);
  //      }
  //    }
  //  }
  //
  //  if (numberOfRows == 6) {
  //    for (int x = gridSizeX; x <= gridSizeX*10; x += gridSizeX) {
  //      for (int y = gridSizeY; y <= gridSizeY*5; y += gridSizeY) {
  //        noStroke();
  //        fill(255);
  //        rect(x-1, y-1, 5, 5);
  //        stroke(255, 50);
  //      }
  //    }
  //  }

  for (int j = 0; j < 7; j++) {
    if (numberOfRows == j) {
      for (int x = gridSizeX; x <= gridSizeX*10; x += gridSizeX) {
        for (int y = gridSizeY; y <= gridSizeY*(j-1); y += gridSizeY) {
          noStroke();
          fill(255);
          rect(x-1, y-1, 5, 5);
          stroke(255, 50);
        }
      }
    }
  }

  for (int x = gridSizeX; x <= gridSizeX*numberOfColumns; x += gridSizeX) {
    for (int y = gridSizeY; y <= gridSizeY*numberOfRows; y += gridSizeY) {
      noStroke();
      fill(255);
      rect(x-1, y-1, 5, 5);
      stroke(255, 50);
    }
  }
}

