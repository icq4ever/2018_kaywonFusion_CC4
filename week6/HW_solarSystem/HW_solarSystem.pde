/*
    과제 풀이

    회전하는 행성을 rotate()와 translate()으로 구현하였음.
    sin() / cos()으로 구현할 수도 있습니다.
    뭐든 정답은 없다는거.
*/

float rotationDegree;        //외전할 각도를 담아둘 변수 선언
PImage sun, earth;

void setup(){
    size(800, 800);
    pixelDensity(2);
    
    sun = loadImage("sun.png");
    earth = loadImage("earth.png");
    
    imageMode(CENTER);
    frameRate(60);
}
void draw(){
    background(0);
    
    // 회전하는 각도를 millis()를 이용해서 계산한다..
    rotationDegree = map(millis()%5000, 0, 5000, 0, 360);
    
    // 좌표계의 원점을 이동 (캔버스의 중앙으로...)
    // 이 값을 변화시키면서, translate이 어떤 역할을 하는지 알아보자.
    translate(width/2, height/2);                
    
    image(sun, 0, 0, 200, 200);
    
    
    // 좌표계의 원점을 중심으로 회전 (radians의 단위!)
    rotate(radians(rotationDegree));
    // 좌표축 그리기
    //drawAxis();
       
    image(earth, 350, 0, 50, 50);
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