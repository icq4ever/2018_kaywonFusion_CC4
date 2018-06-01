void setup(){
    size(800, 300);
    frameRate(60);
}

void draw(){
    background(0);
    
    fill(255);
    float rSize = map(mouseX, 0, width, 50, 400);
    ellipse(width/2, height/2, rSize, rSize);
    
    println(frameCount);

    // 60프레임마다 한번씩 저장하기  (나머지 연산자를 사용)
    if(frameCount % 60 == 0){
        saveFrame("save/capture-######.png");   // 프레임번호를 사용하여 저장한다.
    }
}

// 혹은 키보드 s키를 눌렀을때 저장하기
void keyReleased(){
    if(key == 's'){
        saveFrame("capture-######.png");    // 자동으로 숫자를 붙여서 저장한다.
        println("capture!");
    }
}
