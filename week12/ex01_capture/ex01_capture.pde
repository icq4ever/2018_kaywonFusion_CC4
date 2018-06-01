void setup(){
    size(800, 300);
}

void draw(){
    background(0);
    
    fill(255);
    float rSize = map(mouseX, 0, width, 50, 400);
    ellipse(width/2, height/2, rSize, rSize);
}

// 키보드 s키를 눌렀을때 저장하기
void keyPressed(){
    if(key == 's'){
        save("capture.tif");    // capture.tif로 저장하기
    }
}
