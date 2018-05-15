PFont font;

size(800, 800);
background(0);
// 컴퓨터에 설치된 폰트 리스트 출력하기
for( String fontName : PFont.list()){
    println(fontName);
}

// 위 리스트에서 하나를 선택하여 폰트명으로 지정하여 생성
// createFont명령을 이용하여 폰트를 만들어 사용
font = createFont("AppleSDGothicNeo-Bold", 72);

textFont(font);
textAlign(CENTER);
text("안녕 여러분\n한글 출력 짱짱", width/2, height/2);
