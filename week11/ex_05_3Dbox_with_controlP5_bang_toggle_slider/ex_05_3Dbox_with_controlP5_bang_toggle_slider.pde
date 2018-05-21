/*
    회전하는 3D 큐브(box)의 속도를 slider UI로 조절해보자
    큐브의 색을 랜덤하게 바꾸는 Bang UI를 만들어보자
    배경색을 toggle UI로 조절해보자
*/
     
import controlP5.*;

ControlP5 cp5;
color c;

float rX, rY;    // 각도
float rVX, rVY;  // 각속도
boolean isOn;    // 백그라운드를 밝게 할건지를 결정하는 boolean 변수  

void setup(){
    size(600, 600, P3D);
    
    cp5 = new ControlP5(this);
    
    // 슬라이더 붙이기
    
    c = color(255, 255, 0);    // 노란색으로 초기화
    
    cp5.addSlider("rVX")        // 슬라이더 UI와 연동할 변수명을 문자열로 지정
        .setPosition(20, 20)    // 슬라이더의 위치 (좌측 상단)
        .setSize(200, 15)       // 슬라이더의 크기
        .setRange(-5,5)         // 슬라이더의 범위
        .setValue(0)            // 슬라이더의 초기값
        ;
        
    cp5.addSlider("rVY")
        .setPosition(20, 50)
        .setSize(200, 15)
        .setRange(-5,5)
        .setValue(0)
        ;
        
    cp5.addBang("randomC")      // 연동시킬 함수명을 문자열로 지정한다. 
        .setPosition(20, 85)
        .setSize(50, 50)
        .setLabel("random\nBTN")    // UI의 라벨
        ;
        
    cp5.addToggle("isOn")
        .setPosition(80, 85)
        .setSize(50, 10)
        .setLabel("BG ON")
        ;
}

void draw(){
    if(isOn)    background(255);
    else        background(20);
    
    // 각도 = 이전각도 + 각속도
    rX = rX + rVX;
    rY = rY + rVY;
    
    // UI가 rotate의 영향을 받지 않도록 push/pop matrix로 묶어주자!
    pushMatrix();
    translate(width/2, height/2);
    rotateY(radians(rY));
    rotateX(radians(rX));
    fill(c);
    box(150);
    popMatrix();
}


// 컬러 c를 랜덤한 색으로 바꾸는 정의함수 생성
void randomC(){
    c = color(random(255), random(255), random(255));
}
