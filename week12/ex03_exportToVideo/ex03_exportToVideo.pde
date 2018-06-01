// 매 프레임을 시퀀스로 저장한 뒤,
// 이미지 시퀀스가 저장된 폴더를 프로세싱에 내장된 비디오 제작도구를 사용하여 mov비디오  파일로 내보낸다.
// 도구 > movie maker 

// 윈도우 사용자들은 quicktime for windows를 다운받아서 설치하면 완성된 mov 비디오파일을 볼 수 있다.
// 코덱이 없더라도, 곰플레이어, 다음팟플레이어 등 별도의 전용 비디오플레이어를 사용해도 볼 수 있다.

void setup(){
    size(800, 300);
    rSize = 50;
    count = 1;
}

void draw(){
    background(0);
    fill(255);
    ellipse(width/2, height/2, rSize, rSize);
    
    textAlign(CENTER, CENTER);    // 가로 세로 중앙정렬 
    fill(0);
    text(rSize, width/2, height/2);
    
    rSize = rSize + 1;
    if(rSize > 400)    rSize = 50;
    
    // 매 프레임을 무조건 frameNumber를 사용하여 시퀀스로 저장한다. 
    // frames 폴더에 저장
    saveFrame("frames/capture-######.png");
}

