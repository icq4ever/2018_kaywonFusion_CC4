// 마우스를 빨리 움직였을 때 
// 배경색을 바꿔보는 실습
// mouseX, mouseY : 현재의 마우스 x y 좌표
// pmouseX, pmouseY : 이전 프레임의 마우스 x y좌표

// dist(a, b, c, d) : 점 (a, b)와 점(c,d)의 거리를 계산해주는 함수

void setup(){
    size(400, 400);
}

void draw(){
    background(0);
    
    // 만약 이전 마우스좌표와 현재 마우스 좌표의 거리가 50이 넘는다면
    if( dist(pmouseX, pmouseY, mouseX, mouseY) > 50 ){
        // 조건이 맞을때 : 노란색으로
        fill(255, 255, 0);
    } else {
        // 조건이 맞지 않을 때 : (그렇지 않으면) cyan색으로 칠하게 한다.
        fill(0, 255, 255);
    }
    
    // 원을 그린다 (위 조건문과는 상관없음.)
    ellipse(mouseX, mouseY, 200, 200);
}