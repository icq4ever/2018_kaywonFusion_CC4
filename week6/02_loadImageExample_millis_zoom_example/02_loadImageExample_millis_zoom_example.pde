PImage satellite;    // 불러올 이미지를 담는 이미지 변수 선언 
float zoom;

void setup() {
    size(800, 800);

    satellite = loadImage("earth.png");
}

void draw() {
    // millis() : 프로세싱이 시작된 이후 경과한 시간을 milliseconds (1/1000초)로 알려주는 함수
    // map함수를 이요하여, 0초부터 10초(10000밀리세컨드)까지의 범위를 , 0.1에서 1사이의 범위로 변환하여 계산한 뒤 zoom에 담는다.
    zoom = map(millis(), 0, 10*1000, 0.1, 1);
    zoom = constrain(zoom, 0.1, 1);    // zoom의 값을, 0.1에서 1 사이의 값으로 짤라버림
    
    background(0);
    imageMode(CENTER);
    image(satellite, width/2, height/2, satellite.width * zoom, satellite.height*zoom);
}