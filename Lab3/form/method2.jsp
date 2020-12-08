<%@ page contentType="text/html; charset=utf-8" %>
<%
request.setCharacterEncoding("utf-8"); 
%> 

<html>
<head><title>Textform 처리</title></head>
<body>
당신이 입력한 정보입니다.<br/>
<!-- requset 객체의 getParameter(String name) 메소드를 통해 입력된 값을 읽어올 수 있음 -->
<b>ID</b> : <%= request.getParameter("id") %><br/>     
<b>Password</b> : <%= request.getParameter("pw")%><br/> 
<b>자기소개</b><br/>
<%= request.getParameter("desc") %> <br/>
</body>
</html> 
