# week 6

## 이미지 다루기
- `PImage` : 프로세싱 이미지 자료형 (정확히는 클래스)
- `loadImage()` : data폴더내의 이미지파일의 파일명을 이용하여 불러오는 함수
- `image()`: 이미지를 화면에 그린다.

## map()
- ``map(value, start1, end1, start2, end2);``:  `start1`에서 `end1`사이의 범위에 있는 `value`의 값을, `start2`와 `end2`의 범위로 변환하여 계산해줌
- ``constrain(value, min, max);``

## 회전
- `translate()`: 좌표계을 이동
- `rotate()` : 원점을 중심으로 시계방향으로 회전. 단위는 라디안
- `radians()`:  degree -> radian 변환

## 프로세싱 타이머
- ``millis()`
