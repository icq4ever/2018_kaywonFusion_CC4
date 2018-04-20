
int result;

// 함수 선언하기 (만들기)
// multi라는, 두개의 값을 입력하면,
// 입력한 두 값의 곱을 계산해서 결과로 뱉어내는(리턴하는) 함수를 만들어봅시다.
// 각 입력값의 형은 정수. 
// 출력값의 형은 정수.
int multi(int a,int b){
    return a * b;
}

void setup(){
    result = multi(3 , 4);
}

void draw(){
}