import upload.*;

/**
Click the shape to upload it
**/

void setup() {
  size(200,200);
}

void draw() {
  background(0);
  fill(150);
  rect(50,50,100,100);
  fill(220);
  triangle(100, 75, 75, 125, 125, 125);
}

void mouseClicked() {
  println("Clicked!");
  uploadthis();
  println("Upload complete");
}


void uploadthis() {
  upload($p, '../../server/php/upload.php');
}


