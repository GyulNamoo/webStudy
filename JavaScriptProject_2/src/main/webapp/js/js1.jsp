<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--
				자바스크립트 : HTML과 CSS로 구성된 웹페이지를 동적으로 만들어주는 ㅇ너어
				            ========== 정적페이지
				    | 서버와 관련없이 브라우저에서 동적으로 변경 => 이미지 변경 / 이벤트 발생
				    | 프론트 개발의 대표적인 프로그램
				    | ***라이브러리 (Jquery, Ajax, ReactJS, NextJS...)
				          => 자바스크립트의 Basic 사용
				    | 프로그램 언어 형식
				      ========== 데이터를 저장 / 관리 / 제어 / 연산
				                 ===========       =====  ===
				                 												  1) 단항연산자
				                 												       ...
				                 												     형변환연산자
				                 												        숫자 변환 : Number() , parseInt()
				                 												        문자 변환 : String()
				                 												        논리 변환 : Boolean()
				                 												        ** HTML을 제어 / CSS 제어
				                 												           ==========
				                 												           HTML에서 입력값을 읽는 경우
				                 												           ====================== 문자열
				                 												           => 장바구니 : 총금액
				                 												     산술 연산자 
				                 												        * : 산술, 문자열 결합
				                 												        / : 0으로 나눌 수 없다 
				                 												            정수/정수=실수
				                 												        % 왼쪽부호가 남는다
				                 												        *** 연산처리가 안되는 상태 : NaN
				                 												     비교 연산자 : === , !==
				                 												  2) 이항연산자
				                 												  3) 삼항연산자
				                                   1) 조건문
				                                      = 단일 조건문
				                                         if(조건문:비교연산자, 논리연산자, 부정연산자)
				                                         {
				                                         		실행문장
				                                         }
				                                         = 다중조건문 => 조건에 맞는 문장만 수행
				                                      = 선택 조건문
				                                      = 다중 조건문
				                                   2) 반복문 => 자바스크립트를 자체에서 사용하지 않는다
				                                              자바에 데이터를 전송하면 자바스크립트가 출력
				                                              ========== 서버에서 출력에 필요한 데이터만
				                                      for(초기값;조건식;증가식)
				                                      {
				                                      		반복수행문장
				                                      }
				                                      for( 변수 of 배열) 
				                                      {
				                                      		=> for-each
				                                      }
				                                      
				                                      => 라이브러리
				                                      배열명.forEach(function(변수){})
				                                      										  ====
				                                      										  Callback => 배열에서 값을 한개씩 읽어서 매개변수로 전송
				                                 		  배열명.map(function(변수){}) => 가장 많이 사용되는 반복문 
				                                 		       => Ajax,Vue,React
				                                   3) 반복 제어
				                                       반복문 종료 => break;
				                           ## 자바스크립트 : 자바 데이터를 받아서 HTML/CSS를 제어 => 동적 페이지
				                           ## HTML / CSS : 화면에만 출력
				                           ## 자바 : 오라클 데이터를 관리
				                           ## 오라클 : 공유하는 데이터를 저장하는 공간
				                                     =================
				                           오라클 => 자바 => 자바스크립트로 전송 => HTML을 생성, CSS 생성 => 화면에 출력             
				                  1) 변수 : 한개의 데이터 저장
				                     => 자동 지정 변수 : var, let, const
				                                      ===
				                                      | 사용범위가 명확하지 않다 => 메모리해제가 안된다 ES5
				                        function display()
				                        {
				                        		var i = 10;
				                        }
				                        i를 사용할 수 있다 => 메모리 누수현상이 많이 존재
				                        
				                        => 보완 : let : []이 종료되면 자동으로 메모리 회수
				                        function display()
				                        {
				                        		let i=10; 
				                        } // i 는 메모리 해제 
				                        i를 사용하면 오류 발생
				                        
				                        *** 자동 지정 변수
				                            자바스크립트에서 사용하는 데이터형
				                            =========
				                              = number : 숫자 (정수, 실수)
				                              = string : 문자, 문자열 => '', ""
				                              = boolean	
				                              = object : [] (Array), {}(객체)
				                                                     =======  JSON
				                                                              =====
				                                                              자바 => 자바스크립트로 전송 (JSON)
				                              []은 object로 되어 있다 데이터형이 달라도 된다
				                              {} => {키:값,키:값 ...} => CSS (margin:값)
				                                     키를 멤버변수로 인식한다 (사용자 정의)
				                        => let 변수명=10  => int
				                           let 변수명=0.5 => double
				                           let 변수명='aaa' => string
				                           let 변수명="aaa" => string
				                           let 변수명={} => 객체형
				                           let 변수명=[] => 배열인식
				                           let 변수명=true/false => boodlean
				                        
				                  2) 배열 : 여러개 데이터를 저장
				                  3) 객체 : 한개에 대한 정보를 한번에 저장 
				                            {}, class Sawon{}
				                            ==
				          자바스크립트는 HTML의 태그 제어 => HTML 태그를 읽는 방법
				          ===============================================
				            *** document.getElementById(id명)
				            document.getElementByTagName(tag명)
				            document.getElemenetByClassName(class명)
				            *** document.querySelector(css선택자)
				          ===============================================
				           화면 출력
				          ===============================================
										document.write()
										***alert() : 
										***태그명.innerHTML : 태그와 태그 사이에 데이터를 첨부
										***console.log() : 자바와 연동 => 확인				          
				          ===============================================
 --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>