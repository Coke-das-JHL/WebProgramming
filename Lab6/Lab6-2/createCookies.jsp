<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.Date" %>
<%  // name 및 date 쿠키 생성
    // Cookie cookie = new Cookie (String name, String value);
    // response.addCookie(cookie);
    // 한글의 경우 인코딩 필수
   Cookie cookie = new Cookie("name", URLEncoder.encode("jspbook 쿠키 테스트"));  
   Cookie cookie2 = new Cookie("date", new Date().toString());  // date 쿠키 생성
   response.addCookie(cookie);
   response.addCookie(cookie2);
   // 쿠키는 사용자의 컴퓨터에 저장 -> 변경, 삭제 hard
   // 변경: 같은 이름을 가지는 쿠키를 전송
   // 삭제: cookie.setMaxAge(0); response.addCookie(cookie); 
%>
<html>
<head><title>쿠키생성</title></head>
<body>
쿠키 이름: <%= cookie.getName() %><br/>
쿠키 값: <%= cookie.getValue() %><br/>
<br/>
쿠키 이름: <%= cookie2.getName() %><br/>
쿠키 값: <%= cookie2.getValue() %>

<p><a href="getCookies.jsp">Next Page to view the cookie value</a></p>

</body>
</html>
