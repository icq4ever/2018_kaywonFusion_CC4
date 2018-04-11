/*
    이미지를 불러오는 예제.
    이미지는 반드시 스케치가 저장된 디렉토리의 "data"폴더안에 위치해야 한다.
    불러올 이미지를 드래그하여 던져넣어도 자동으로 data폴더를 만들어 넣어준다.
    
    파일명은 반드시 영문으로.
    
    PImage, String과 같이, 대문자로 시작하는 자료형은 실제로는 class라고 한다.
    
    class는 자료형과 달리, 속성과 메소드(함수)를 갖고 있다.
    
    PImage의 속성으로는, 담겨있는 이미지의 가로, 세로사이즈를 의미하는 width와 height가 있다.
    
    클래스의 변수(정확히는 인스턴스라고 한다)의 속성 및 함수를 사용하려면,
    변수명(인스턴스명)에 .키워드를 붙이면 된다.
    프로세싱에서 코드자동완성기능을 사용할 경우, 리스트가 보여진다.
*/

PImage satellite;    // 불러올 이미지를 담는 이미지 변수 선언 
float zoom;

void setup() {
    size(800, 800);

    // earth.png를 불러와 satellite라는 이미지변수(정확히는 클래스의 인스턴스라고 한다)에 담는다.
    satellite = loadImage("earth.png");
}

void draw() {
    
    background(0);
    imageMode(CENTER);
    
    // satellite.width : satellite에 담긴 이미지의 가로크기 (픽셀)
    // satellite.height : satellite에 담긴 이미지의 세로크기 (픽셀)
    image(satellite, width/2, height/2, satellite.width, satellite.height);
}