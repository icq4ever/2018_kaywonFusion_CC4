## week 13

프로세싱 스케치를 정지이미지, 동영상, 벡터로 저장하는 방법

### 이미지로 저장하기
- `save()` : 이미지로 저장
- `saveFrame()` : 이미지의 파일명을 프레임 번호를 사용하여 저장

#### save()
```
save("filename.png");
save("folder/filename.png");		// foleder라는 이름의  폴더를 만들고, 그 안에 filename.png로 저장.
```

- `filename.png`로 화면을 캡쳐해서 스케치가 위치한 폴더에 저장한다.
- 폴더를 만들어 저장하려면, "" 의 파일명 앞에 `폴더명/`을 붙이면 된다.
- 저장할 때 `tif`, `jpg`, `png`등의 확장자를 사용할 수 있다.
	- `tif` : 무압축으로 저장하며, 용량은 크나 저장할 때 딜레이가 없다.
	- `jpg` : 압축하여 저장하며, 용량은 작으나 저장시 딜레이가 있다. 조금 뭉개질 가능성이 있다.
	- `png` : 압축하여 저장하며, 용량은 작으나 저장시 딜레이가 있다.


#### saveFrame()

```
saveFrame("save-######.png");
```

- save()와 동일하나, 저장시에 프레임번호(프로세싱의 `frameCount` 변수로 확인 가능)를 사용하여 파일명으로 저장. #의 갯수로 자릿수를 지정할 수 있다.
- 위의 예제를 사용하면 파일명은 아래와 같다
	- `save-000001.png`
	- `save-000002.png`


### 동영상으로 저장
saveFrame()으로 연속된 이미지 시퀀스를 저장한 뒤, 프로세싱에서 제공하는 movieMaker 도구를 사용하면 동영상으로 저장이 가능하다.

- 메뉴 `tool > movieMaker`에서 이미지시퀀스가 저장된 폴더를 지정한 뒤 export.
- 윈도우 사용자의 경우 `quicktime for windows`를 다운받사 설치해야 동영상을 재생할 수 있다.  (코덱 설치)
- 혹은, 다음팟플레이어, 곰플레이어와 같은 동영상 플레이어로도 확인이 가능


### 벡터로 저장하기
- 프로세싱에서는 pdf 라이브러리를 사용하여 그려진 요소들을 벡터로 저장할 수 있다. (`import processing.pdf.*)
- 이미지 내보내기와 다르게, 녹화시작과 끝이 있고, 그 사이에 그려지는 요소들이 pdf로 저장된다.

	- 녹화시작 : `beginRecord(PDF, "filename.pdf")`	- filename.pdf로 녹화를 시작한다.
	- 녹화 끝 : `endRecord()` - 녹화끝 

```
// 프로그램시작과 동시에 녹화를 시작해 마우스를 클릭할때까지 그려지는 모든것이 pdf로 저장되는 예제

import processing.pdf.*;		// 라이브러리 로드

void setup() {
  size(400, 400);
  beginRecord(PDF, "everything.pdf");		// 녹화시작. 프로그램시작과 동시에 녹화를 시작한다.
}

void draw() {
  ellipse(mouseX, mouseY, 10, 10);
}

void mousePressed() {
  endRecord();								// 마우스를 눌러야 녹화 끝
  exit();									// 동시에 프로그램을 종료
} 
...