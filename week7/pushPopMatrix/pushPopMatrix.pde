float angle;

void setup() {
    size(800, 800);
}

void draw() {
    background(0);
    
    angle = map(millis(), 0, 10*1000, 0, 360);
    
    pushMatrix();
    translate(width/2, height/2);    
    rotate(radians(angle));
    
    // 흰색에, 외곽선 없는 하얀 원을 그린다.
    fill(255);
    noStroke();
    ellipse(250, 0, 50, 50);
    popMatrix();
    
    rect(600, 600, 40, 40);
    
    
}