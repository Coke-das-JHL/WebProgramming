<%@ page contentType="text/html; charset=UTF-8" %>
<!-- 지시문, Tomcat에 버퍼의 사용여부를 전달, autoflush 비활성화하고 따로 flush()를 넣지 않았기
	때문에 버퍼가 가득차면 오류 발생-->
<%@ page buffer="1kb" autoflush="false" %>
<html>
<head>
<title>버퍼 테스트 1</title>
</head>
<body>
<% for (int i=0;i<2000;i++){ %>
ABC
<% } %>
</body>
</html>
