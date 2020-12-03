<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%!
// Declaration: JSP 페이지 전체에서 활용할 변수 및 메소드를 선언
String str="선언 예제";
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
