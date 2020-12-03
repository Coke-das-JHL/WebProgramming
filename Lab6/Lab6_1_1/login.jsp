<%@ page contentType="text/html;charset=utf-8" %>

<!-- 로그인 처리과정
    1. 로그인 입력받기 2. 데이터베이스에 저장된 로그인 정보와 일치하면 session의 특정속성으로 기록 
    3. 이후 각 서블릿에서는 로그인 정보가 존재하는지 검사하는 부분을 추가
    4. 로그아웃하는 경우 session.invalidate(), 특정 속성을 지움으로서 세션을 종료가능함-->

<%  // 세션의 MasterLoginID 속성 읽어옴 -> 이미 로그인되어있지 않은지
    // 세션에 로그인 기록이 있는지 읽음(이번 예제는 context-Parameter로 ID,Pwd 저장해놓음 loginProcess에 setAttrubute 존재) 
      
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
