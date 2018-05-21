import controlP5.*;     // 라이브러리 불러오기

ControlP5 cp5;        // controlP5클래스의 인스턴스를 선언

// 변수선언
float x, y;
float rSize;
color c;                   // 컬러변수 선언
boolean isPickerOn;        // picker UI에서 얻어온 컬러를 사용할지 사용되는 boolean 변수. toggleUI에 연동됨 
boolean isUIOn = false;    // UI를 보여줄지를 결정하는 boolean 변수

ColorPicker cp;

void setup(){
    size(800, 300);
    
    // 변수 초기화
    x = width/2;
    y = height/2;
    rSize = 150;
    c = color(255, 255, 0);    // 노란색으로 초기화
    
    // 인스턴스를 초기화
    cp5 = new ControlP5(this);
    
    cp5.addSlider("rSize")        // 연결할 변수를 문자열로 지정
        .setSize(200, 15)         //  슬라이더의 사이즈
        .setPosition(20, 20)      // 슬라이더의 출력 위치
        .setRange(10, 200)        // 슬라이더의 최소-최대값
        .setNumberOfTickMarks(10)
        .setLabel("radius")
        .setValue(50);            // 슬라이더의 초기값
        
    cp5.addSlider("x")
        .setSize(200, 15)
        .setPosition(20, 50)
        .setRange(0, width)
        .setLabel("position X")
        .setValue(width/2);
        
    cp5.addBang("randomC")
        .setSize(30, 30)
        .setPosition(20, 75)
        .setLabel("random!");
        
    cp5.addToggle("isPickerOn")
        .setSize(30, 15)
        .setPosition(60, 75)
        .setLabel("picker on");
        
    cp = cp5.addColorPicker("colorValue")
            .setPosition(20, 135);
            
    cp5.hide();    // 기본으로 숨김
}

void draw(){
    background(0);
    
    if(isPickerOn)    fill( cp.getColorValue() );
    else              fill(c);
    
    ellipse(x, y, rSize, rSize);
}

void randomC(){    // 랜덤한 컬러를 c에 담는다!
    c = color(random(255), random(255), random(255));
}

void keyPressed(){
    if(key == ' ')    isUIOn = !isUIOn;
    
    if(isUIOn)    cp5.show();
    else          cp5.hide();
}
