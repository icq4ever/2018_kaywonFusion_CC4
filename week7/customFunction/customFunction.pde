// 컬러와 사이즈만 지정해서 원을 그려주는 함수를 만들어 사용하자.
void easyEllipse(color c, float size) {
    fill(c);
    ellipse(width/2, height/2, size, size);
}

void setup() {
    size(800, 800);
}

void draw() {
    //ellipse(width/2, height/2, 400, 400);
    //ellipse(width/2, height/2, 300, 300);
    //ellipse(width/2, height/2, 200, 200);
    //ellipse(width/2, height/2, 100, 100);
    easyEllipse(color(255, 0, 0), 400);
    easyEllipse(color(0, 255, 0), 300);
    easyEllipse(color(0, 0, 255), 200);
    easyEllipse(color(#FFFF00), 100);
}