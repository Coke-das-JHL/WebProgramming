<%@ page contentType="text/html;charset=utf-8" %>
<%  
   // 세션의 MasterLoginID 속성 읽어옴
   // Attribute의 경우 Value가 Object로 저장 형변환이 필수
   
   String masterID = (String)session.getAttribute("MasterLoginID");  
   boolean isLogin = false;
   if (masterID != null) {
      isLogin = true; 
   }
%>
<html>
<head><title>로그인여부 검사</title></head>
<body>
<%
   if (isLogin) {
%>
아이디 "<%= masterID %>"로 로그인 한 상태 <br/><br/>
<a href="logout.jsp">로그아웃</a>
<%
   } else {
%>
로그인하지 않은 상태
<%
   }
%>
</body>
</html>
