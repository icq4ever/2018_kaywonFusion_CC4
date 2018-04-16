// 이상한 나라의 우주를 만들어보자
// 도형들이 다른 중심을 기준으로 각각 공전한다.

void setup(){
    size(600, 600);
}

void draw(){
    background(0);
    
    //// 첫번째 원
    //pushMatrix();
    //translate(300, 300);
    //rotate(millis()/100.0);
    //ellipse(100, 100, 50, 50);
    //popMatrix();
    
    
    //// 두번째 원
    //pushMatrix();
    //translate(150, 150);
    //rotate(millis()/100.0);
    //ellipse(100, 100, 50, 50);
    //popMatrix();   
    spinningPlanet(300, 300);
    spinningPlanet(150, 150);
    spinningPlanet(200, 200);
}

void spinningPlanet(float x, float y){
    pushMatrix();
    translate(x, y);
    rotate(millis()/100.0);
    ellipse(100, 100, 50, 50);
    popMatrix();   
}