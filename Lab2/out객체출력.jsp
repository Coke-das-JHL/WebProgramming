<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>1부터 100까지의 합 구하기</title>
</head>
<body>
<%
	int sum=0;
	for(int i=1;i<=100;i++){
		sum=sum+i;
	}
%>
<%
	//out.print를 이용한 출력
	for(int i=0;i<=99;i++){
		out.print(i+"+");
		}
		out.print(100+"="+sum);
%>
</body>
</html>
