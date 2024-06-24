/**
 * 
 * 
 * 
 * 
 */
	function start1() {
		alert("자바스크립트 시작1")
	}
	/*
	함수 선언식(Declaration) hoisting 
	function 키워드 뒤에 함수 이름을 명시하여 함수선언
	함수가 정의되기 전에 호출
	*/
	
	let start2=function(){
		alert("자바스크립트 시작2")
	}
	/*
	함수 표현식(Expression) 
	// 변수에 익명함수를 할당 
	// 변수에 할당되기 전에는 사용불가 (호이스팅x)
	*/
	
	
	// 자바스크립트 6버전에서 주로 사용 => Arrow 함수 => function, return을 제거해서 사용 
	// 자바 => 람다식 
	
	let start3 =()=> {
		alert("자바스크립트 시작3")
	}
	/*
	화살표 함수(Arrow Finction)
	function키워드 대신 => 사용하여 정의 
	function 키워드와 return 문을 생략가능 
	자신만의 this 바인딩을 가지지 않는다 , 
	  => 콜백 함수나 비동기 작업에서 유용
	*/