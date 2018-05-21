import controlP5.*;

color c = color(100);

ControlP5 cp5;

void setup(){
    size(800, 300);
    cp5 = new ControlP5(this);
    
    // colorWheel 추가
    cp5.addColorWheel("c")            // 적용할 color변수명을 지정
        .setRGB(color(255, 255, 0))   // 기본 컬러값을 지정
        .setPosition(20, 20)          // UI의 위치 지정
        .setLabel("fill color")       // 라벨 지정
        ;
}

void draw(){
    background(0);
    fill(c);
    
    rectMode(CENTER);
    rect(width/2, height/2, 100, 100);
}
