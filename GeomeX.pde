import moonlander.library.*;
// Minim must be imported when using Moonlander with soundtrack.
import ddf.minim.*;
Moonlander moonlander;
int ypos = 100;
int col = 0;
boolean bw = false;

void setup() {
    /* Parameters: PApplet, filename (file should be in sketch's folder), beats 
    per minute, rows per beat */
    moonlander = 
        Moonlander.initWithSoundtrack(this, 
                                      "Stumblefather–Intermission2-Vejo!.mp3", 
                                      103, 4);
    // change the size and background color of screen
    size(1280,720,P3D);
    background(0);
    smooth();
    moonlander.start();
}

void draw() {
    // Handles communication with Rocket
    moonlander.update();
    double value = moonlander.getValue("my_track");
    double bgcValue = moonlander.getValue("bgc");
    double angleValue = moonlander.getValue("angle");
    double sizeValue = moonlander.getValue("size");
    double speedValue = moonlander.getValue("speed");
    double colorValue = moonlander.getValue("color"); 
    double x = moonlander.getValue("x");
    double y = moonlander.getValue("y");
     //col = (int) speedValue;
     background((int)bgcValue);

    if((int) value == 1) {
     drawCircle(width/2,height/2,(float)sizeValue);
    }
    if((int) value == 2) {
      float theta = map(height,0,width,0,PI*(float)angleValue);
      translate(width/2, height);
      branch((int)sizeValue,theta,1);
      branch((int)sizeValue,theta,1.5);
      branch((int)sizeValue,theta,3);
      branch((int)sizeValue,theta,4.5);
      branch((int)sizeValue,theta,6);
      branch((int)sizeValue,theta,7.5);
    }
    if((int) value == 3) {
     drawCircle2((width/2 + (float)speedValue),height/2,(float)sizeValue);
    }
    if((int) value == 5) {
     rotateY(PI*(float)angleValue);
     drawCircle3((width/2 + (int)speedValue),(height/2 + (int)colorValue),(int)sizeValue); 
    }
    if((int) value == 6) {
      background((int) colorValue);
    float theta = map(height,0,width,0,PI*(float)angleValue);
      translate(width/2, height);
      branch2((int)sizeValue,theta,1,(int)colorValue);
      branch2((int)sizeValue,theta,1.5,(int)colorValue);
      branch2((int)sizeValue,theta,3,(int)colorValue);
      branch2((int)sizeValue,theta,4.5,(int)colorValue);
      branch2((int)sizeValue,theta,6,(int)colorValue);
      branch2((int)sizeValue,theta,7.5,(int)colorValue);
    }
    
    if((int)value == 7) {
      drawCircle4((width/2),height/2,(float)sizeValue);
      drawCircle4((width/2 + (int)speedValue), height/2,(float)sizeValue);
      drawCircle4((width/2 + 2*(int)speedValue), height/2,(float)sizeValue);
      drawCircle4((width/2 - (int)speedValue), height/2,(float)sizeValue);
      drawCircle4((width/2 - 2*(int)speedValue), height/2,(float)sizeValue);
      drawCircle4((width/2),(height/2 + 200),(float)sizeValue);
      drawCircle4((width/2 + (int)speedValue), (height/2 + 200),(float)sizeValue);
      drawCircle4((width/2 + 2*(int)speedValue), (height/2 + 200),(float)sizeValue);
      drawCircle4((width/2 - (int)speedValue), (height/2 + 200),(float)sizeValue);
      drawCircle4((width/2 - 2*(int)speedValue), (height/2 + 200),(float)sizeValue);
      drawCircle4((width/2),(height/2 - 200),(float)sizeValue);
      drawCircle4((width/2 + (int)speedValue), (height/2 - 200),(float)sizeValue);
      drawCircle4((width/2 + 2*(int)speedValue), (height/2 - 200),(float)sizeValue);
      drawCircle4((width/2 - (int)speedValue), (height/2 - 200),(float)sizeValue);
      drawCircle4((width/2 - 2*(int)speedValue), (height/2 - 200),(float)sizeValue);
    }
    
    if((int)value == 9) {
      rotateY(PI * (float)y);
      rotateZ(PI * (float)x);
      if((int)colorValue != 1) {
        drawCircle5((width / 2),
                    (height / 2),
                    (float)sizeValue);
      }
      if((int)colorValue != 2) {
        drawCircle5((width / 2 + 4 * (int)speedValue),
                    (height / 2 + 150),
                    (float)sizeValue);
      }
      if((int)colorValue != 3) {
        drawCircle5((width / 2 + 8 * (int)speedValue),
                    (height / 2 + 300), 
                    (float)sizeValue);
      }
      if((int)colorValue != 4) {
        drawCircle5((width / 2 - 4 * (int)speedValue),
                    (height / 2 - 150),
                    (float)sizeValue);
      }
      if((int)colorValue != 5) {
        drawCircle5((width / 2 - 8 * (int)speedValue),
                    (height / 2 - 300),
                    (float)sizeValue);
      }
      if((int)colorValue != 6) {
        drawCircle5((width / 2 + 16 * (int)speedValue),
                    (height / 2 + 900),
                    (float)sizeValue);
      }
      if((int)colorValue != 7) {
        drawCircle5((width / 2 - 16 * (int)speedValue),
                    (height / 2 - 450),
                    (float)sizeValue);
      }
      if((int)colorValue != 8) {
        drawCircle5((width / 2 + 32 * (int)speedValue),
                    (height/2 + 750),(float)sizeValue);
      }
      if((int)colorValue != 9) {
        drawCircle5((width / 2 - 32 * (int)speedValue),
                    (height/2 + 600),(float)sizeValue);
      }
    }
    
    if((int)value == 10) {
      background((int) colorValue);
      rotateZ(PI*(float)x);
     drawCircle6((width/2 + (int)speedValue),(height/2 + (int)y),(int)sizeValue,
     (int)colorValue);
    }
    if((int)value == 11) {
      rotateY(PI*(float)y);
      rotateZ(PI*(float)x);
      int interval = (int)width/5;
      for(int i = 1; i <= 10; i++){
        for(int j = 1; j <= 10; j++){
        drawCircle((-250 + i*interval),(-250 + j*interval),((float)sizeValue + j+i));
        }
      }
    }
    
    if((int)value == 13) {
      fill(0);
      textSize(48);
      text("Parallel Places", 50, 580);
      textSize(32);
      text("GeomeX", 50, 615);
      textSize(10);
      text("Music: Stumblefather – Intermission 2 - Vejo!", 50, 635);
    }
    ypos = ypos + 10;
}

void branch(float len,float theta,float m) {
  line(0, 0, 0, -m*len);
  translate(0, -m*len);

  len *= 0.66;
 
  if (len > 2) {
    pushMatrix();
    rotate(theta);
    branch(len,theta,m);
    popMatrix();
 
    pushMatrix();
    rotate(-theta);
    branch(len,theta,m);
    popMatrix();
  }
}

void branch2(float len,float theta,float m,int col) {
  stroke(255-col);
  line(0, 0, 0, -m*len);
  translate(0, -m*len);

  len *= 0.66;
 
  if (len > 2) {
    pushMatrix();
    rotate(theta);
    branch2(len,theta,m,col);
    popMatrix();
 
    pushMatrix();
    rotate(-theta);
    branch2(len,theta,m,col);
    popMatrix();
  }
}

void drawCircle(int x, int y, float radius) {
  if((radius % 10) < 5) {
    fill(0);
  } else {
    fill(255);
  }
  ellipse(x, y, radius, radius);
  if(radius > 2) {
    radius *= 0.9f;

    drawCircle(x, y, radius);
  }
}

void drawCircle2(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 2) {
    drawCircle2(x + radius/2, y, radius/2);
    drawCircle2(x - radius/2, y, radius/2);
  }
}

void drawCircle4(float x, float y, float radius) {
  stroke(255);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 2) {
    drawCircle2(x + radius/2, y, radius/2);
    drawCircle2(x - radius/2, y, radius/2);
  }
}

void drawCircle5(float x, float y, float radius) {
  stroke(0);
  noFill();
  ellipse(x, y, radius, radius);
  if(radius > 32) {
    drawCircle5(x + radius/1.5, y, radius/1.5);
    drawCircle5(x - radius/1.5, y, radius/1.5);
  }
}

void drawCircle3(float x, float y, float radius) {
  ellipse(x, y, radius, radius);
  if(radius > 16) {
    drawCircle3(x + radius/2, y, radius/2);
    drawCircle3(x - radius/2, y, radius/2);
    drawCircle3(x, y + radius/2, radius/2);
    drawCircle3(x, y - radius/2, radius/2);
  }
}

void drawCircle6(float x, float y, float radius, int col) {
  stroke(255-col);
  ellipse(x, y, radius, radius);
  if(radius > 512) {
    drawCircle3(x + radius/2, y, radius/2);
    drawCircle3(x - radius/2, y, radius/2);
    drawCircle3(x, y + radius/2, radius/2);
    drawCircle3(x, y - radius/2, radius/2);
  }
}
