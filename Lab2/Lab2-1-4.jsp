<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%!
/**JAVA 주석 세 번째 것입니다.(puls: num1과 num2를 더한 값을 리턴한다.) **/
public int plus(int num1,int num2){
	return num1+num2;
	}
%>
<html>
<head>
<title>주석 예제</title>
</head>
<!-- HTML주석은 서버의 출력으로 브라우저의 전달됨 -->
<!-- HTML 주석을 사용합니다. -->
<body>
<%--JSP 주석의 경우 java파일로 변환될때 사라짐, 주석이 중첩되면 안됨--%>
<%--JSP 주석을 사용합니다. --%>
<%
//주석 첫 번째 것입니다.
	int num1=10;
	int num2=20;
//java주석의 경우 Servelet파일 변환시에 사라짐
/* 주석 두번째 것입니다.
num1과 num2를 더해서 result에 할당한다. */
	int result=plus(num1,num2);
%>
<%= num1%>과<%= num2%>를 더한 값은 <%= result%>입니다. 
</body>
</html>
