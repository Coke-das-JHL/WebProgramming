<%@ page contentType="text/html;charset=utf-8"%>
<html>
<body>
<center>
<%
Integer count = (Integer)application.getAttribute("count");  // count 이름 값의 속성을 얻어온다.
Integer newCount = null;
if (count == null) {
  application.setAttribute("count", 1);  // application 속성으로 count값을 관리
} else {
  newCount = count + 1;
  application.setAttribute("count", newCount); // application 속성으로 count값을 관리
}
%>
방문자수 : <%= application.getAttribute("count") %>명
<br>
<%= request.getRealPath("/") %> <br>  <!-- webapps까지 절대 경로 -->
<%= request.getRequestURI() %><br>	   <!-- webapps부터 그 이하의 주소-->
<%= request.getRequestURL() %><br>		<!--  URL 전체주소 -->
</center>
</body>
</html>
