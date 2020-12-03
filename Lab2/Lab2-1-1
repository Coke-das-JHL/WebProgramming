<!-- 지시문 Tomcat에 현재 JSP페이지 처리와 관련된 정보 전달을 목적 -->
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<html>
<head>
<title>1부터 100까지의 합 구하기</title>
</head>
<body>
<!-- 스크립트릿: JSP페이지 내에서 코드 구현을 위해 사용 -->
<%
	int sum=0;
	for(int i=1;i<=100;i++){
		sum=sum+i;
	}
%>
<!-- Expression: 간단한 데이터 출력 및 연산결과, 메소드를 통한 데이터 출력을 위해 사용, 콜론없음!! -->
1+2+3+...+99+100=<%= sum%>
</body>
</html>
