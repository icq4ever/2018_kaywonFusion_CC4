// 하나의 원이 화면 안에서 튕기는 애니메이션 만들기
// 원이 화면안에서 튕기며, 경계에 닿을 때마다 원의 색이 랜덤하게 바뀐다.

float x;        // 원의 좌표를 저장할 변수 선언
float y;
float vx;       // 원의 x방향의 속도
float vy;       //     y방향의 속도
float rSize;    // 원의 크기를 저장할 변수 선언
color c;        // 원의 색을 저장할 변수 선언

void setup(){
    size(800, 300);
    
    // 원과 관련된 변수들 초기화하기
    x = width/2;
    y = height/2;
    vx = random(-5, 5);
    vy = random(-5, 5);
    rSize = random(15, 20);
    c = color ( random(0, 255), random(0, 255), random(0, 255));
}

void draw(){
    background(0);
    
    fill(c);    // 원의 색 지정
    ellipse(x, y, rSize, rSize);    // 원 그리기 
    
    // 가독성을 위해, 별도의 사용자함수로 정의하여 호출하였다.
    move(); 
    edgeCheck();
}

void move(){
    // move
    // 새로운 위치 = 이전위치 + 속도
    x = x + vx;
    y = y + vy;
}

// 경계를 벗어나면, 속도를 반대로 바꿔준다.  (속도를 바꾸면 원의 운동방향이 바뀜)
void edgeCheck(){
    // edge check
    if ( x + rSize/2 > width || x - rSize/2 < 0)    {   // 원의 중심이 아니라, 원의 테두리가 캔버스의 경계를 넘어섰는지를 체크하면 보다 자연스러운 애니메이션이 된다.
        vx = -vx;
        c = color ( random(0, 255), random(0, 255), random(0, 255));
    }
    
    if ( y + rSize/2 > height || y - rSize/2 < 0){
        vy = -vy;
        c = color ( random(0, 255), random(0, 255), random(0, 255));
    }
}