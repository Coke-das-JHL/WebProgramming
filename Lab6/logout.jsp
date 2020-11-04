<%@ page contentType="text/html;charset=utf-8" %>

<% //1970년 1월 1일 0시 0분 0초 GMT 기준)
   //session.getLastAccessedTime(): 세션에 마지막 접근 시간 반환
   //session.getCreationTime(): 세션 시작 시간 반환
   out.print("세션 지속 시간: "+ (session.getLastAccessedTime()-session.getCreationTime())+ "msec");
   session.invalidate();  // 세션의 무효화 -> 로그아웃
   // session.removeAttribute("MasterLoginID")
%>
<html>
<head><title>로그아웃</title></head>
<body>
<br/><br/> 로그아웃하였습니다. <br/><br/>
<a href="login.jsp">처음부터</a>
</body>
</html>
