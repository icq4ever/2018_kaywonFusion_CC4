// 여러개의 원이 화면 안에서 튕기는 애니메이션 만들기

// 원의 개수를 수정하기 편하게 변수로 만든다. 
// 배열의 길이, for문의 반복횟수등에 이 변수를 사용한다.
int nBalls = 1000;

// 간단하게, 원을 그리기 위한 변수를 배열로 바꾼다.
// 배열의 각 요소들은, 각 원을 그리기 위한 정보들을 갖게 된다.
float[] x = new float[nBalls];        // 원의 좌표를 저장할 변수 선언
float[] y = new float[nBalls];
float[] vx = new float[nBalls];       // 원의 x방향의 속도
float[] vy = new float[nBalls];       //     y방향의 속도
float[] rSize = new float[nBalls];    // 원의 크기를 저장할 변수 선언
color[] c = new color[nBalls];        // 원의 색을 저장할 변수 선언

void setup() {
    size(800, 300);

    // 원과 관련된 변수들 초기화하기
    // 배열은 for문을 이용해 접근할 수 있다.
    for (int i=0; i<nBalls; i++) {
        x[i] = width/2;
        y[i] = height/2;
        vx[i] = random(-5, 5);
        vy[i] = random(-5, 5);
        rSize[i] = random(5,10);
        c[i] = color ( 100,100, random(0, 255));
    }
}


void draw() {
    //background(0);
    fill(0, 10);
    rect(0, 0, width, height);
    
    noStroke();

    // 원을 움직이고, 경계에 닿았는지를 체크한다.
    // 코드 가독성을 위해, 별도의 사용자 정의함수로 선언하고 호출.
    move();
    edgeCheck();

    // 원을 그린다.
    // 배열은 for문을 이용해 접근할 수 있다.
    for (int i=0; i<nBalls; i++) {
        fill(c[i]);    // 원의 색 지정
        ellipse(x[i], y[i], rSize[i], rSize[i]);    // 원 그리기 
    }
}

void move(){
    for(int i=0; i<nBalls; i++){
        // 새로운 위치 = 이전 위치 + 속도 
        x[i] = x[i] + vx[i];
        y[i] = y[i] + vy[i];

    }
}

// edge check
// 경계밖을 벗어나면, 속도를 반대로 바꾼다.
// 또한 동시에, 색을 랜덤하게 바꿔준다.
void edgeCheck(){
    for(int i=0; i<nBalls; i++){
        if ( x[i] + rSize[i]/2 > width || x[i] - rSize[i]/2 < 0) {
            vx[i] = -vx[i];
            c[i] = color ( random(0, 255), random(0, 255), random(0, 255));
        }

        if ( y[i] + rSize[i]/2 > height || y[i] - rSize[i]/2 < 0) {
            vy[i] = -vy[i];
            c[i] = color ( random(0, 255), random(0, 255), random(0, 255));
        }
    }
}