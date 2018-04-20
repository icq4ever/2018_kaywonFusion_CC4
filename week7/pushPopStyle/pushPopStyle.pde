/*
    pushMatrix() / popMatrix()는 좌표계에 관한 것들이라면
    pushStyle() / popStyle()은 스타일에 관한 것이다.

    스타일은 선의 굵기, 선의 색, 채우는색, 등등 도형을 그릴때 사용되는 요소들을 말한다.
*/

size(800, 800);

fill(0, 0, 255);

//
pushStyle();
fill(255, 255, 0);
ellipse(400, 400, 200, 200);
popStyle();
//

ellipse(400, 400, 100, 100);