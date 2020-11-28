<%@ page contentType="text/html;charset=utf-8"%>
<html>
<body>
<center>
<%
session.setMaxInactiveInterval(10);         //세션 지속시간 초 단위 설정
 
Integer count = (Integer)application.getAttribute("count");
Integer newCount = null;
if (count == null) {
  application.setAttribute("count", 1);     // application 속성으로 counter 값을 관리
} else {
  if (session.isNew()) {
    newCount = count + 1;
    application.setAttribute("count", newCount);    // application 속성으로 counter 값을 관리
  }
}
%>
방문자수 : <%= application.getAttribute("count") %>명
</center>
</body>
</html>
