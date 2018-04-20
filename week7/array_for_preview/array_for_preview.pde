/*  배열/for 반복문 맛보기 

    중간고사 이후에 다룰 내용이지만, 수업시간에 질문이 있어서 시연을 하면서 간단히 맛을 봤던 예지입니다.

    배열 
  : 하나의 값만 보관할 수 있는 변수와 달리, 여러개의 값을 저장할 수 있는 자료형이다.
    배열 하나에 연속적으로 값을 저장할 수 있으며, 인덱스 번호로 자료에 접근할 수 있다.

    가령, 여러개의 이미지를 불러와 순차적으로 이미지를 보여준다고 했을 떄, 변수를 사용한다면
    각기 다른 변수명을 사용해야 하므로 과정이 복잡하지만,
    배열을 사용하면 아주 손쉽게 구현할 수 있다.


    for 반복문
  : 배열을 사용할 때 항상 따라다니는 반복문이다.
    배열에 접근할 인덱스번호가 0에서 1씩 증가하기 때문에,
    반복문에서 반복자 i를 0부터 1씩 증가시켜가며 배열의 길이이내가 될 경우까지만 반복하게 사용하는것이 
    대표적인 사용법이다

    for(초기상태; 반복조건; 반복할때마다 상태 변경){
        반복될 내용
    }

    // 사용 예시
    for(int i=0; i<30; i++ ){
        println(i);
    }


    위의 코드에서 보면, for 반복문의 몸체는 특정 조건이 만족할 때까지 반복한다.

    우선 정수 i를 0으로 초기화 시키고, 반복을 시작한다.

    i<30이라는 조건이 만족하면 계속 반복한다.
    
    한번 반복할 때마다 i++을 수행하는데.
    i++ 는 i=i+1 즉, i를 1씩 증가하게 한다.

    저 반복문을 프로세싱에서 수행하게 되면.
    i가 0에서 시작해서 1씩 증가하며, i<30이 "참"일 경우까지 반복하므로,
    콘솔에 0부터 29까지 반복되며 출력될 것이다.

*/

//변수로 불러오기
//PImage f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12;

// 배열로 불러오기
PImage [] imgs = new PImage[12];
int frameNum;

void setup(){
    size(374, 245);
    
    frameRate(30);
    
    // 변수로 불러오기
    //f1 = loadImage("horse_1.png");
    //f2 = loadImage("horse_2.png");
    //f3 = loadImage("horse_3.png");
    //f4 = loadImage("horse_4.png");
    //f5 = loadImage("horse_5.png");
    //f6 = loadImage("horse_6.png");
    //f7 = loadImage("horse_7.png");
    //f8 = loadImage("horse_8.png");
    //f9 = loadImage("horse_9.png");
    //f10 = loadImage("horse_10.png");
    //f11 = loadImage("horse_11.png");
    //f12 = loadImage("horse_12.png");
    
    
    // 배열로 불러오기
    // 변수와 마찬가지로, 일일히 파일명을 사용해서 불러올 수 도 있지만..
    //imgs[0] = loadImage("horse_1.png");
    //imgs[1] = loadImage("horse_2.png");
    //imgs[2] = loadImage("horse_3.png");
    //imgs[3] = loadImage("horse_4.png");
    //imgs[4] = loadImage("horse_5.png");
    //imgs[5] = loadImage("horse_6.png");
    //imgs[6] = loadImage("horse_7.png");
    //imgs[7] = loadImage("horse_8.png");
    //imgs[8] = loadImage("horse_9.png");
    //imgs[9] = loadImage("horse_10.png");
    //imgs[10] = loadImage("horse_11.png");
    //imgs[11] = loadImage("horse_12.png");
    
    // 배열과 for문 사용하여 불러오기
    // for문을 사용하면.
    // String변수에 파일명을 i를 사용하여 담아두고, 각 배열에 이미지를 불러올 수 있다.
    for(int i=0; i<12; i++){
        String fileName;
        fileName = "horse_" + (i+1) + ".png";
        println(fileName);
       
        imgs[i] = loadImage(fileName);
    }
    
    frameNum = 0;
}

void draw(){
    //println(frameNum);
    image(imgs[frameNum], 0, 0);
    
    frameNum = frameNum+1;
    if(frameNum > 11){
        frameNum = 0;
    }
}