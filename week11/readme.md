# week11
이번주에 배운 내용은 GUI 인터페이스를 추가하여 변수와 연동하는 방법입니다.
사용되는 프로세싱 라이브러리는 !(controlP5)[http://www.sojamo.de/libraries/controlP5/] 입니다.

## 라이브러리 설치
- 프로세싱 메뉴 `tools`> `add Tool` :  `libraries` 탭에서 `controlP5` 선택후 설치
- 설치 후 모든 프로세싱 창을 닫고 다시 실행하면 설치 완료

## 라이브러리 불러오기
- 프로세싱 메뉴 `sketch` > `import library`에서 `controlP5` 를 선택하면 자동으로 라이브러리를 불러오는 코드가 스케치의 상단에 추가됩니다

```
import controlP5.*;
```

## 클래스 인스턴스 생성및 초기화

```
import controlP5.*;

ControlP5 cp5;  // 인스턴스 선언

void setup(){
    cp5 = new ControlP5(this);  // 인스턴스 초기화 (생성자 호출)

    // setup에서 UI를 추가하면 자동으로 화면에 그려진다.
}

void draw(){
    ...
}

...

```

## 대표적인 UI들

- `Slider` : 슬라이더 UI. `float` 변수와 연동할 수 있다. 크기지정에 따라 가로/세로 슬라이더로 사용이 가능
- `Bang` : 버튼UI. `사용자정의함수`를 호출할 수 있다.
- `Toggle` : 토글버튼 UI. `boolean`변수와 연동할 수 있다.
- `ColorWheel` : 컬러선택 wheel UI. `color`변수와 연동할 수 있다.
- `ColorPicker` : 컬러선택 슬라이더 UI. `color`변수와 연동할 수 있다.

그 밖의 UI들은 함께 설치되는 예제파일을 참고해보자.

## 변수/함수 연결하기
- controlP5 라이브러리는 특이하게 함수명 또는 변수명을 `문자열`로 지정하여 연동할 수 있다.

```
import controlP5.*;

ControlP5 cp5;
float fNumber;                      // 슬라이더를 움직이면 이 변수의 값이 바뀐다

void setup(){
    ...
    cp5 = new ControlP5(this);

    cp5.addSlider("fNumber")        // 연동할 변수명을 "문자열"로 전달
        ...
        ;

    cp5.addBang("customFunction")   // 연동시킬 함수명을 "문자열"로 전달
        ...
        ;
}

void draw(){
    ...
}

void customFunction(){              // 사용자 커스텀 함수 선언. Bang버튼을 누르면 이 함수가 호출된다.
    ...
}
    

...

```

## 예제

### sliderUI
```
import controlP5.*;

ControlP5 cp5;
float fNumber;                      // 슬라이더를 움직이면 이 변수의 값이 바뀐다

void setup(){
    ...
    cp5 = new ControlP5(this);

    cp5.addSlider("fNumber")        // 연동할 변수명을 "문자열"로 전달
        .setPosition(20, 20)        // UI가 그려질 위치 지정. (좌측 상단)
        .setSize(200, 15)           // 슬라이더의 크기 지정. 가로가 세로보다 길면 가로형 슬라이더, 세로가 가로보다 길면 세로형 슬라이더가 만들어진다.
        .setRange(-10, 10)          // 슬라이더의 범위를 지정할 수 있다. 지정하지 않으면 (0 - 100)
        .setValue(0)                // 초기값을 지정할 수 있다.
        .setLabel("myNumber")       // 라벨을 지정할 수 있다. 지정하지 않을경우 변수명이 사용된다.
        ;
}

void draw(){
    ...
}


```

### bangUI

```
import controlP5.*;

ControlP5 cp5;
color c;

void setup(){
    ...
    cp5 = new ControlP5(this);

    c = color(0);                   // 기본으로 검은색으로 지정 

    cp5.addBang("randomColor")      // 연동할 함수명을 "문자열"로 전달
        .setPosition(20, 20)        // UI가 그려질 위치 지정. (좌측 상단)
        .setSize(50, 50)           // 버튼 크기 지정
        .setLabel("random!")        // 라벨을 지정할 수 있다. 지정하지 않을경우 변수명이 사용된다.
        ;
}

void draw(){
    ...
    background(c);                  // color형 변수 c를 이용하여 배경색을 지정
}

void randomColor(){                // bang버튼을 누르면 이 함수가 호출된다.
    c = color(random(255), random(255), random(255));       // 컬러를 랜덤으로 변경
}
```

## 주의사항
만약 3D에서 UI를 사용할 경우, UI역시 `translate`, `rotate`등 좌표계 변환 설정의 영향을 받게 됩니다.<br/>
따라서 `pushMatrix()`, `popMatrix()`를 사용하여 영향을 받지 않게 설정합니다.