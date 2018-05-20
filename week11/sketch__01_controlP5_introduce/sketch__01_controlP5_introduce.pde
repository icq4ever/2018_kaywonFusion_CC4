import controlP5.*;        // controlP5 라이브러리를 불러옴

ControlP5 cp5;             // ControlP5 클래스의 인스턴스 선언

// 사용할 변수 선언
float rSize;
float x, y;
boolean showOn = true;
float r, g, b;

void setup(){
    size(800, 300);
    
    // 변수들을 초기화
    x = 30;
    y = height/2;
    rSize = 100;
    
    r = g = b = 255;
    
    // 컨트롤UI 초기화 (클래스의 인스턴스 초기화)
    cp5 = new ControlP5(this);    
    
    // 변수들을 컨트롤러와 연결
    cp5.addSlider("x")          // 변수명을 "문자열"로 지정
        .setPosition(20, 20)    // 위치지정
        .setSize(200, 20)       // 슬라이더의 크기 지정
        .setRange(0, width)     // 조정할 범위를 지정
        .setValue(width/2)      // 슬라이더의 초기값을 지정 !! 위의 초기화 값을 덮어버림!
        .setLabel("position x")
        ;
        
    cp5.addSlider("rSize")
        .setPosition(20, 50)
        .setSize(200, 20)
        .setLabel("size")
        .setRange(50, 500)
        ;
        
    cp5.addBang("bang")         // bang은 함수를 실행하는 버튼이라고 생각하면 된다.
                                // 특이하게, 함수명을 "문자열"로 지정
        .setPosition(20, 80)   // 위치 지정
        .setSize(20, 20)        // 크기 지정
        .setLabel("random");    // 라벨 지정. 함수명과는 다르다! 함수명과는!  
        ;
}

void draw(){
    background(0);
    fill(r,g,b);
    ellipse(x, y, rSize, rSize);
    
    if(showOn)    cp5.show();
    else          cp5.hide();
    
    /*
    // 만약, 변수의 값이 자동으로 업데이트되면, UI의 값도 변경되게 하고 싶다면..
    
    // 변수를 자동으로 업데이트
    rSize += 10.0;
    if(rSize > 500)    rSize = 10;
    
    // 변수값을 UI에 적용하여 업데이트하기
    // 조금은 난해한 코드이지만, 몇몇부분들만 바꿔주면 된다.
    
    // "rSize" : 슬라이더 세팅시 설정한 이름 ("문자열!")
    cp5.getController("rSize").setBehavior(new ControlBehavior(){
        public void update(){
            setValue(rSize);    // rSize는 실제로 사용되는 변수명 
        }
    }
    );
    
    */
    
}

void keyPressed(){
    if(key == ' '){
        showOn = !showOn;
    }
}

// 앞의 addBang 에서의 문자열과 동일하게 작성한다.
void bang(){
    r = random(255);
    g = random(255);
    b = random(255);
}
