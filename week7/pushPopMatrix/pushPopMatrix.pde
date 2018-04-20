/*
    translate()이나 rotate()과 같이 
    좌표계를 조작하는 명령을 사용하게 되면,
    이후 그려지는 도형들은 변경된 좌표계위에 그려지게 되므로 골치아픈 일이 발생할 수 있다.

    pushMatrix(), popMatrix()는
    이렇게 변경된 좌표계가 이후에 영향을 받지 않도록 하는데 사용된다.

    pushMatrix()로 시작해서
    popMatrix()로 끝나는 사이 구간에서의 좌표계 변형은, 이 바깥에 영향을 미치지 못한다.

    조금더 엄밀히 말하면
    pushMatrix()는 현재의 좌표계 상태를 저장해두고,
    popMatrix()에서는, 이전에 저장되어있던 좌표계의 상태를 불러오게 된다.

*/

float angle;

void setup() {
    size(800, 800);
}

void draw() {
    background(0);
    
    angle = map(millis(), 0, 10*1000, 0, 360);
    
    // 
    pushMatrix();
    translate(width/2, height/2);    
    rotate(radians(angle));
    
    // 흰색에, 외곽선 없는 하얀 원을 그린다.
    fill(255);
    noStroke();
    ellipse(250, 0, 50, 50);
    popMatrix();
    // 
    

    // 아래의 rect는, translate()과 rotate()의 영향을 받지 않고,
    // pushMatrix()이전의 좌표계 상태에서 그려지게 된다.
    rect(600, 600, 40, 40);
    
    
}