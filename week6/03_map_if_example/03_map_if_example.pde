/*

    마우스의 좌표를 이용하여
    중앙일때 가장 크게, 그리고 좌우로 갈수록 작게 이미지를 그리는 예
    
*/

PImage earth;    // 이미지를 담을 이미지 변수를 선언
float zoom;      // 이미지를 얼마나 크게 그릴건지... 변수 

void setup(){제
    size(800, 800);
    
    // 스케치가 저장된 폴더에 data라는 폴더 안에 넣어야 한다.
    // 귀찮으면, 걍 드래그.
    earth = loadImage("earth.png");
}

void draw(){
    background(0);
    
    // 마우스의 좌표가 어디에 있는지를 판별한다음,
    // 각 조건에 따라 변환할 값의 범위를 다르게 계산하여 zoom에 담는다.
    if(mouseX < width/2){
        zoom = map (mouseX, 0, width/2, 0.1, 1);
    } else {
        zoom = map(mouseX, width/2, width, 1, 0.1);
    }
    
    // zoom이라는 변수를, 마우스의 X좌표에 따라 0.1 ~ 1사이로 변하도록 한다.
    //zoom = map(mouseX, 0, width, 0.1, 1);
    
    //println("가로사이즈 : " + earth.width + "\t" + "세로사이즈: " + earth.height);
    
    
    imageMode(CENTER);    // 이미지의 중심을 기준으로 그리도록 한다.
                          // 자매품 imageMode(CORNER)
    image(earth, width/2, height/2, earth.width*zoom, earth.height*zoom);
}