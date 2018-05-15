// 초간단 그림판 

// 과제 : 마우스의 움직임 속도에 따라 선의 굵기를 바꾸게 하여 그림그리는 
//       스케치를 만들어보자 
void setup(){
    size(1024, 768);
    background(0);
}

void draw(){
    stroke(255);
    
    float speed =  dist(pmouseX, pmouseY, mouseX, mouseY);
    float strokeSize = map(speed, 0, 50, 1, 20);
    strokeSize = constrain(strokeSize, 1, 20);
    
    strokeWeight(strokeSize);
    if(mousePressed){
        line(pmouseX, pmouseY, mouseX, mouseY);
    }
}

void keyPressed(){
    if(key == ' '){
        background(0);
    }
}
