color red = #F52A2A;
color blue = #1737E3;
color yellow = #F7FF21;
color orange = #EA6A1A;
color white = #FCFFFD;
color green = #0FA727;


void setup()  {
  size(640, 360, P3D);
  noStroke();
  fill(204);
}

void draw()  {
  background(0);
  lights();

  if(mousePressed) {
    float fov = PI/3.0; 
    float cameraZ = (height/2.0) / tan(fov/2.0); 
    perspective(fov, float(width)/float(height), cameraZ/2.0, cameraZ*2.0); 
  } else {
    ortho(-width/2, width/2, -height/2, height/2);
  }
  translate(width/2, height/2, 0);
  rotateX(-PI/6); 
  rotateY(PI/3); 
  box(160);
  

}
