<%@ page contentType="text/html; charset=UTF-8" %>
<!-- page 지시문: <%@ page 속성1="속성값1" ... %> 
속성값 예시: contentType, pageEncoding, import(사용할 Java패키지나 클래스 지정, buffer(사이즈), autoflush(true/false), session(true/false) ...
	    errorPage(에러 발생시 호출될 페이지 지정), isErrorPage(에러 핸들링하는 페이지인지 지정)

Tomcat에 버퍼의 사용여부를 전달, autoflush 비활성화하고 따로 flush()를 넣지 않았기 때문에 버퍼가 가득차면 오류 발생
default = 8Kbyte, autoflush=true  
 사용하지 않으려면 buffer="none" => <jsp:forward> 태그(출력이 발생한 경우) 사용불가!-->
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
