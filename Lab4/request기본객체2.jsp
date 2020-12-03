<!-- request 기본객체 -->

<%@ page contentType="text/html;charset=utf-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<html>
<head><title>Request Form 처리</title></head>
<body>
<center>
<h2>Request Form 처리 - 1</h2>
<hr> 
<table border=1 cellspacing="1" cellpadding="5">
<tr><td>이름</td><td><%=request.getParameter("username")%></td></tr>
<tr><td>직업</td><td><%=request.getParameter("degree")%></td></tr>
<tr><td>관심분야</td>
<td>
<%
  String favorites[] = request.getParameterValues("favorite");
  for(int i=0; i<favorites.length;i++) {
    out.println(favorites[i]+"<BR>");
  }
  for(String favorite:favorites) {
    out.println(favorite+"<BR>");
  }
%>
</td>
</tr>
</table>
<hr>
<h2>Request Form 처리 - 2</h2>
<table border=0><tr><td>
1. 클라이언트 IP 주소: <%= request.getRemoteAddr() %> <br/>
2. 요청 메서드: <%= request.getMethod() %> <br/>
3. 프로토콜: <%= request.getProtocol() %> <br/>
4. 서버 호스트 이름: <%= request.getServerName() %> <br/>
5. 서버 포트: <%= request.getServerPort() %> <br/>
6. 요청 URI: <%= request.getRequestURI() %> <br/>
7. 요청 URL: <%= request.getRequestURL() %> <br/>
8. 요청 URL중 쿼리 스트링: <%= request.getQueryString() %> <br/>
9. 컨텍스트 패스 정보: <%= request.getContextPath() %> <br/>
10. Referer: <%= request.getHeader("referer") %>
</td></tr>
</table>
</center>
</body>
</html>
