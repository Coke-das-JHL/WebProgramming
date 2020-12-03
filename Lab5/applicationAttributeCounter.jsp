<%@ page contentType="text/html;charset=utf-8"%>
<html>
<body>
<center>
<%
//Attribute의 경우 value가 Object객체로 저장되기 때문에 반드시 형변환을 다시 해주야함
// pageContext, session, requset, application만 가지고 있는 속성, 각각의 활성범위 숙지!!!
// setAttribute getAttribute getAttributeNames(-> Enumeration반환) removeAttribute
Integer count = (Integer)application.getAttribute("count");  // count 이름 값의 속성을 얻어온다.
Integer newCount = null;
if (count == null) {
  application.setAttribute("count", 1);  // application 속성으로 count값을 관리
} else {
  newCount = count + 1;
  application.setAttribute("count", newCount); // 같은 이름 -> 덮어씌움, application 속성으로 count값을 관리
}
%>
방문자수 : <%= application.getAttribute("count") %>명
<br>
  <!-- 	    request 기본객체
            getParameterNames()
	    getParameter(String name)
	    getParameterValues(string name)
	    getCookies()
  -->
<%= request.getRealPath("/") %> <br>       <!-- webapps까지 절대 경로 -->
<%= request.getContextPath() %> <br>       <!-- /webapps_name 반환 -->
<%= request.getRequestURI() %><br>	   <!-- webapps부터 그 이하의 주소-->
<%= request.getRequestURL() %><br>         <!--  URL 전체주소 -->
</center>
</body>
</html>
