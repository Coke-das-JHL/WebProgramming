<!-- 기본객체
 _JspService메소드에 자동으로 선언되어 있음. 선언하지않고 사용가능
 request, response, config, application, session, page, out ... -->

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
<tr><td>이름</td><td><%=request.getParameter("username")%></td></tr>  <!-- request.getParameter(String name): 입력값을 String으로 읽어옴 -->
<tr><td>직업</td><td><%=request.getParameter("degree")%></td></tr>
<tr><td>관심분야</td>
<td>
<%
  String favorites[] = request.getParameterValues("favorite");       //request.getParameterValues(String name): 입력값을 String배열로 읽어옴
  for(int i=0; i<favorites.length;i++) {
    out.println(favorites[i]+"<BR>");
  }
  for(String favorite:favorites) {    // 향상된 for문도 사용 가능
    out.println(favorite+"<BR>");
  }
%>
</td>
</tr>
</table>                                                        <!-- request, response객체를 통해 cookie관리도 가능 -->
<hr>
<h2>Request Form 처리 - 2</h2>
<table border=0><tr><td>
1. 클라이언트 IP 주소: <%= request.getRemoteAddr() %> <br/>
2. 요청 메서드: <%= request.getMethod() %> <br/>
3. 프로토콜: <%= request.getProtocol() %> <br/>
4. 서버 호스트 이름: <%= request.getServerName() %> <br/>
5. 서버 포트: <%= request.getServerPort() %> <br/>                <!-- Ex https://localhost:8081/jspbook/Lab/example.jsp -->
6. 요청 URI: <%= request.getRequestURI() %> <br/>                <!-- 호스트 이름 이후의 내용 반환:  /jspbook/Lab/example.jsp-->
7. 요청 URL: <%= request.getRequestURL() %> <br/>                <!-- 요청 URL전체 반환: https://localhost:8081/jspbook/Lab/example.jsp--> 
8. 요청 URL중 쿼리 스트링: <%= request.getQueryString() %> <br/>
9. 컨텍스트 패스 정보: <%= request.getContextPath() %> <br/>        <!-- webapps폴더만 출력 /jspbook -->
10. Referer: <%= request.getHeader("referer") %>                <!-- 헤더의 referer정보를 읽어옴 해당 페이지를 호출한 URL -->
</td></tr>
</table>
</center>
</body>
</html>

<!-- response 객체. cookie, sendRediect() 제어 흐름에서 언급 -->
