<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!-- Declaration -->
<%! 
	int count=0;
	int up()
	{return ++count;}
%>
<html>
<body>
<table border="1">
<!-- 선언문의 경우 전역변수로 선언되기 때문에 서버의 java파일이 변하기 전까지 그 값을 보존,
		페이지 요청이 있으면 _jspService 메소드를 계속 호출함 -> 전역변수에는 영향이 없음 -->
	
<!--HTML 주석에서 Expressoin 사용 가능-->
<!-- 브라우저로 지금까지의 방문횟수를 전달함 -->
<!-- 호출 count : <%=up()%> -->
<tr>
<td>score1</td>
<td><%= 10 %></td>
</tr>
<tr>
<td>score2</td>
<td><%= 30 %></td>
</tr>
<tr>
<td>Total</td>
<td><%= 40 %></td>
</tr>
</table>
</body>
</html>
