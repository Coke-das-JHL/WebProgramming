<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head><title>paramIncluder</title></head>
<body>
종류: 서적

<!-- include를 통한 제어흐름을 하면서 request로 값 전달 가능 -->
<jsp:include page="paramSub.jsp" flush="false"> 
  <jsp:param name="type" value="language" />   
</jsp:include>

<!--request로 전달 되는 parameter는 전달되는 페이지에서만 사용가능하고 
사라지므로 결과는 null이 출력됨-->
jsp: param 정보 확인 <br>
<%= request.getParameter("type") %>
</body>
</html>


<%@ page contentType="text/html;charset=utf-8" %>
<%
String type = request.getParameter("type");   // type 파라미터 값 얻어오기
%>
<br/>
유형: <%= type %> <br/>
리스트: 
<ol>
<li> JSP 웹 프로그래밍
<li> Java 정복
</ol>
