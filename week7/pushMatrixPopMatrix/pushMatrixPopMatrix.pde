/*
    pushMatrix() / popMatrix()
    사용자 정의함수와 함께 사용하기.
*/


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