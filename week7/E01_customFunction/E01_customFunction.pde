// 사용자 정의함수

// 컬러와 사이즈만 전달하여해서 원을 쉽게 그려주는 함수를 만들어 사용하자.
// 값을 리턴하지 않는다.
void easyEllipse(color c, float size) {
    fill(c);
    ellipse(width/2, height/2, size, size);
}

void setup() {
    size(800, 800);
}

void draw() {
    
    easyEllipse(color(255, 0, 0), 400);
    easyEllipse(color(0, 255, 0), 300);
    easyEllipse(color(0, 0, 255), 200);
    easyEllipse(color(#FFFF00), 100);
}