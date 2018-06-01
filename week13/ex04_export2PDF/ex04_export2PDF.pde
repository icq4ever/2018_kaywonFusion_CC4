
//벡터로 저장하기 
//beginRecord(PDF, "save.pdf");    // 녹화시작
//endRecord();        // 녹화 끝

// pdf 라이브러리 불러오기
import processing.pdf.*;


int count;
void setup(){
    size(400, 400);
    background(255);
}

void draw(){
    //line(pmouseX, pmouseY, mouseX, mouseY);
    ellipse(mouseX, mouseY, 50, 50);
}

// s키를 누르면 녹화를 시작해서, z키를 누르면 녹화를 끝냄
void keyReleased(){
    if(key == 's')    {
        String fileName;
        background(255);                        // 녹화직전에 화면을 흰색으로 덮기
        fileName = "save-" + count + ".pdf";    // count변수를 사용하여 저장할 파일명을 지정
        beginRecord(PDF, fileName);             // 지정한 파일명으로 녹화시작
        count++;                                // 한번 저장할때마다 전역변수인 count가 1씩 증가
    }
    if(key == 'z')    {
        endRecord();        // 녹화를 끝낸 후
        background(255);    // 전체를 흰색으로 덮어버림 
    }
}
