int pixelSize = 10;
int phase;
int phaseLimit = 300;
boolean forward = false;
float r;
float g;
float b;

void setup(){
  size(1000, 1000);
}


void draw(){
  //background(255, 0, 0);

  if (forward){
    phase++;
    if(phase > phaseLimit){
      forward = false;
    }
  }else{
    phase--;
    if(phase < 0){
      forward = true;
    }
  }
  
  println(phase);
  noStroke();
  for (int x = 0; x < width; x+=pixelSize){
    for(int y = 0; y < height; y+=pixelSize){
      float angle1 = map(x, 0, width, 0, 1); 
      float angle2 = map(y, 0, height, 0, 1); 
      r = map(sin(radians(phase*angle1)), -1, 1, 0, 254);
      b = map(sin(radians(phase*angle2)), -1, 1, 0, 254);
      fill(r, 0, b);
      rect(x, y, pixelSize, pixelSize);
    }
  }

}
