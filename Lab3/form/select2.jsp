<%@ page contentType="text/html; charset=UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%! String password="happy"; %>  

<!-- 로그인 성공 여부 결정 -->
<html>
<head><title>로그인 결과</title></head>
<body>
<% String input=request.getParameter("pw");
   if(password.equals(input))
	   out.println("로그인에 성공했습니다.");
   else
	   out.println("로그인에 실패했습니다.");
%>
</body>
</html> 
