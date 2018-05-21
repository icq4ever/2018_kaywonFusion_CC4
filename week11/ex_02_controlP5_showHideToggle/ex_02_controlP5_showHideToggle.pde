// 라이브러리를 쓸려면, 라이브러리를 불러와야한다!
import controlP5.*;

ControlP5 cp5;        // ControlP5 클래스의 인스턴스를 선언한다.


// 간단한 원을 만들어보자 (변수를 이용해서)

float x, y;      // 위치
float vx, vy;    // 속도
float rSize;     // 크기 (지름)
boolean uiOn;    // 참/거짓을 가짐.

void setup(){
    size(800, 300);
    
    // 변수를 초기화한다
    x = width/2;
    y = height/2;
    rSize = 150;
    uiOn = false;
    
    // 인스턴스를 초기화한다.
    cp5 = new ControlP5(this);

    cp5.addSlider("rSize")
        .setPosition(20, 20)
        .setSize(200, 15)
        .setRange(50, 300)
        .setValue(80)
        .setNumberOfTickMarks(10)
        .setLabel("radius");
        
    cp5.addSlider("x")
        .setPosition(20, 50)
        .setSize(100, 10)
        .setRange(0, width)
        .setValue(width/2);
        
    cp5.hide();    // 기본으로 숨김
}


void draw(){
    background(0);
    ellipse(x, y, rSize, rSize);
    
    text("press 'h' key to show/hide UI", 20, height-20);
}

// 키가 눌리면 자동으로 호출되는 이벤트 함수
void keyReleased(){
    if(key == 'h'){
        // UI를 껐다 켰다 할 수 있는 변수를 컨트롤
        uiOn = !uiOn;
    }
    
    // 아래부분은 draw에 넣어도 좋지만, 매번 show를 할필요가 없으므로(비효율적이므로), 키가 눌렸을때에만 변경해주는것이 좋을것 같다.
    if ( uiOn )   cp5.show();
    else          cp5.hide();
}
