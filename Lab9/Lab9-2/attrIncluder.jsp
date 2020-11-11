<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head><title>attrIncluder</title></head>
<body>
종류: 서적
<%
String type = "language"; 
request.setAttribute("type", type);   //type 속성 설정
%>
<jsp:include page="attrSub.jsp" flush="false"/>

<!-- request의 활성 범위는 forward와 include 범위에서 존재하므로 
include 파일로 흐름제어가 이동한 뒤에도 원래 파일에서 참조 가능함 -->
Attribute 정보 확인 <br> 
<%= (String)request.getAttribute("type") %>
</body>
</html>

attrSub.jsp
<%@ page contentType="text/html;charset=utf-8" %>
<%
String type = (String)request.getAttribute("type");   //  type 속성 얻어오기
%>
<br/>
유형: <%= type %> <br/>
리스트: 
<ol>
<li> JSP 웹 프로그래밍
<li> Java 정복
</ol>
