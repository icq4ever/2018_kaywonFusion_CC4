//변수로 불러오기
//PImage f1, f2, f3, f4, f5, f6, f7, f8, f9, f10, f11, f12;

// 배열로 불러오기
PImage [] imgs = new PImage[12];
int frameNum;

void setup(){
    size(374, 245);
    
    // 변수로 불러오기
    //f1 = loadImage("horse_01.png");
    //f2 = loadImage("horse_02.png");
    //f3 = loadImage("horse_03.png");
    //f4 = loadImage("horse_04.png");
    //f5 = loadImage("horse_05.png");
    //f6 = loadImage("horse_06.png");
    //f7 = loadImage("horse_07.png");
    //f8 = loadImage("horse_08.png");
    //f9 = loadImage("horse_09.png");
    //f10 = loadImage("horse_10.png");
    //f11 = loadImage("horse_11.png");
    //f12 = loadImage("horse_12.png");
    
    
    // 배열로 불러오기
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