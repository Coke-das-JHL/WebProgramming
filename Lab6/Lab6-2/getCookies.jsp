<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.net.URLDecoder" %>
<html>
<head><title>쿠키 목록</title></head>
<body>
쿠키 목록<br/>
<% //사용자의 요청으로부터 얻을 수 있는 쿠키는 응답 위치와 그 아래에서만 참조가능하다.

   Cookie[] cookies = request.getCookies();  // request 객체로부터 전송된 모든 쿠키를 얻어온다.
   if (cookies != null && cookies.length > 0) {
      for (int i = 0 ; i < cookies.length ; i++) {
%> 
<%= cookies[i].getName() %>=<%= URLDecoder.decode(cookies[i].getValue()) %><br/>
<%	
      }
   } else {
%>
전송 받은 쿠키가 없습니다.
<%
   }
%>
</body>
</html>
