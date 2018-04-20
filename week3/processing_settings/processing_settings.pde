// 프로세싱의 캔버스 기본 설정하기
// 가로 800px
// 세로 400px 의 크기로 지정해보자
size(800, 400);

// 밝기값만을 가지고 지정하기
//background(127);

//// RGB를 조합하여 지정하기
//// 빨간색 R:255, G:0, B:0
//background(227, 98, 218);    

//// 같은 색을 16진수로 지정하기
//background(#E362DA);

background(255);    // 흰 배경색

stroke(255, 0, 0);  // 윤곽선의 색을 지정해주는 명령어
strokeWeight(5);    // 도형그릴때 윤곽선을 2로!
point(30, 30);

stroke(0, 0, 255);
strokeWeight(1);
line(100, 100, 200, 100);    // 시작점의 x, y, 끝점의 x, y

stroke(#E805D9);
fill(#FFFF00);
triangle(50, 50, 100, 80, 30, 140);

// 윤곽선 없이 그리기
noStroke();
fill(#00FFFF);
triangle(70, 50, 120, 80, 50, 140);