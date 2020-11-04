<%@ page contentType="text/html;charset=utf-8" %>

<%  // 세션의 MasterLoginID 속성 읽어옴
    // 세션에 로그인 기록이 있는지 읽음( loginProcess에 setAttrubute 존재) 
    // 로그인 되어 있는데 정상적인 로그인 화면 출력되는 것을 방지
    // Attribute -> name - Object로 저장, 활성범위 숙지
   String masterID = (String)session.getAttribute("MasterLoginID");  
   boolean isLogin = false;
   if (masterID != null) {
      isLogin = true; 
   }
%>
<html>
<head>
   <meta http-equiv="Content-Type" content="text/html;charset=utf-8">
   <title>로그인</title></head>
</head>
<body>
<%
   if (isLogin) {  //로그인 되어 있는 경우
%>
이미 로그인 되어 있습니다. (login ID:<%= masterID %>)) <br/><br/>
<a href="login.jsp">메인 화면으로 가기</a> <br/><br/>   
<a href="logout.jsp">로그아웃</a>
<%
   } else {        //로그인 하지 않은 경우
%>
관리자 (Master)로 로그인하세요.<br/>
<form action="loginProcess.jsp" method="post">
ID : <input type="text" name="id"><br/>
name : <input type="text" name="name"><br/>
Password : <input type="password" name="pw"><br/>
<input type="submit" value="전송">
<% } %>
</body>
</html>
