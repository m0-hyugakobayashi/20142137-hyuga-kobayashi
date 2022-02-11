float baseH =150;
float armL1 = 50;
float armL2 = 50;
float armL3 = 40;
float armW1 = 10;
float armW2 = 10;
float armW3 = 5;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float l3 = 0;
float dif = 1.0;


void setup(){
  size(800, 600, P3D); 
  camera(200, 250,100, 0, 0, 0, 0, 0, -1);
  
  noStroke();  
}

void draw(){
  
  background(240,255,255);
  
  if(keyPressed){
    if(key == 'a'){
      angle0 = angle0 + dif;
    }
    if(key == 'A'){
      angle0 = angle0 - dif;
    }
    if(key == 'b'){
      angle1 = angle1 + dif;
    }
    if(key == 'B'){
      angle1 = angle1 - dif;
    }
    if(key == 'c'){
      angle2 = angle2 + dif;
    }
    if(key == 'C'){
      angle2 = angle2 - dif;
    }
    if(key == 'u'){
      l3 = l3 + dif;
    }
    if(key == 'd'){
      l3 = l3 - dif;
    }
  }
  

  rotateZ(radians(angle0));
  translate(0,0,baseH/2);
  fill(213,135,25);
  box(30,30,baseH);
  
  translate(0,0,0);
  rotateZ(radians(l3));  
  translate(0,10,baseH/2+l3);
  fill(213,135,25);
  box(armW2,armW2,50
  );
 
  rotateZ(radians(angle1));
  translate(0,armW2,baseH/2-40);
  fill(127,255,0);
  box(40,armL1,armW1);
  
  translate(0,armL1-2*armW2,-armW2);
  rotateZ(radians(angle2));  
  translate(0,armW2,0);
 fill(127,255,0);
  box(40,armL2,armW2);
  
}
