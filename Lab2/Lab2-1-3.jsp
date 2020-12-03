<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%!
// Declaration: JSP 페이지 전체에서 활용할 변수 및 메소드를 선언, 세미콜론 필요!
// 선언문을 통한 변수와 메소드는 JSP페이지를 위한 클래스의 멤버 변수, 메소드로 선언
// Scriptlet이나 Expression의 경우 _jspService 메소드의 지역변수로 선언 
String str="선언 예제";
// JAVA에서 함수 선언할 때와 동일하게 선언
public double calculator(double num1,double num2,String operator){
	double result=0.0;
	
	if(operator.equals("+"))
	   {result=num1+num2;}
	else if(operator.equals("-"))
		{result=num1-num2;}
	else if(operator.equals("*"))
		{result=num1*num2;}
	else if(operator.equals("/"))
		{result=num1/num2;}
	
	return result;
}
%>
<html>
<head>
<title>선언 예제</title>
</head>
<body>
<%= str %>
<hr/>
10+5 =<%= calculator(10,5,"+")%><br/>
10-5 =<%= calculator(10,5,"-")%><br/>
10*5 =<%= calculator(10,5,"*")%><br/>
10/5 =<%= calculator(10,5,"/")%>
</body>
</html>
