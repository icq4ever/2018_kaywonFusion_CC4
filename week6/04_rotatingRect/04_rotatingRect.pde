// 화면중앙을 중심으로 회전하는 사각형 실습

void setup(){
    size(800, 800);
}

void draw(){
    background(0);
    
    // 회전의 중심이 되는 원점을 이동한다. 
    translate(width/2, height/2);
    
    // 45도를 회전시키자
    rotate(radians(mouseX));
    
    rectMode(CENTER);
    rect(0, 0, 100, 100);
    
    
    fill(255);
    noStroke();
}