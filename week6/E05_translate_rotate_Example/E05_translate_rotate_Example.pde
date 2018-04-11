/*
    회전 예제
    
    프로세싱에서 회전을 할 경우 사용하는 함수 : rotate();
    
    좌표계를 원점을 기준으로하여 시계방향으로 회전한다.
    
    rotate(각도) : 여기서 각도는 우리가 일반적으로 얘기하는 degree가 아닌, radians단위이다.
    radians는 호도법이라고 하며, 원주율을 사용하여 표기하는 단위이다.
    
    프로세싱에서는 degree를 radians로 변환해주는 radians() 함수가 있다.
    자매품으로, radians를 degree로 변환해주는 degree()함수도 있다.
    
    회전을 할 경우, 원점을 중심으로 이동하는데,
    회전의 중심점인 원점을 이동하는 translate()함수가 있다.
    
    만약, 특정위치를 기준으로 회전하려면 아래와 같은 순서를 취한다.
    
    1. translte(x,y);          // 좌표계의 원점을 이동
    2. rotate(radians(angle))  // 이동된 원점을 중심으로 회전
    3. // draw something       // 여기서 그려지는 도형은, 회전된 좌표계 위에 그려진다.
    
    만약, translate()과 rotate()의 순서가 바뀌면, 예상치 못한 회전이 될 것이다.
    원점을 기준으로 회전한 후, 회전된 상태에서 translate을 하기 때문.
*/

float rot;        //외전할 각도를 담아둘 변수 선언

void setup(){
    size(800, 800);
}
void draw(){
    background(0);
    
    // 회전하는 각도를 마우스의 x좌표에 연동되도록 한다.
    rot = map(mouseX, 0, width, 0, 90);
    
    // 좌표계의 원점을 이동 (캔버스의 중앙으로...)
    // 이 값을 변화시키면서, translate이 어떤 역할을 하는지 알아보자.
    translate(width/2, height/2);                
    
    // 좌표계의 원점을 중심으로 회전 (radians의 단위!)
    rotate(radians(rot));
    // 좌표축 그리기
    drawAxis();
    
    stroke(255);
    strokeWeight(1);
    noFill();
    rect(100, 100, 100, 100);
}


// 사용자가 직접 함수를 정의한 뒤
// 함수의 내용에, 실제 수행할 명령들을 담아둘 수 있다.
// 다음시간에 자세한 내용을 다루도록 하자.
void drawAxis(){
    // x축
    stroke(255, 255, 0);
    strokeWeight(10);
    line(0, 0, width, 0);
    
    // y축
    stroke(0, 255, 255);
    strokeWeight(10);
    line(0, 0, 0, height);
    
    // 원점 그리기
    stroke(255, 0, 0);
    strokeWeight(20);
    point(0, 0);
}