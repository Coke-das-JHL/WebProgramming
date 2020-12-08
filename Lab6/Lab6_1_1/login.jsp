<%@ page contentType="text/html;charset=utf-8" %>

<!-- 로그인 처리과정
    1. 로그인 입력받기 2. 데이터베이스 or application.Attribute or Parameter등 에 저장된 로그인 정보와 일치하면 session의 특정속성으로 기록 
    3. 이후 각 서블릿에서는 로그인 정보가 존재하는지 검사하는 부분을 추가
    4. 로그아웃하는 경우 session.invalidate(), 특정 속성을 지움으로서 세션을 종료가능함-->

<%  // 세션은 접속 중인 웹 브라우저 각각에 대응하여 서로 다른 세션이 생성되고 활용됨
    // 생성: 브라우저의 첫 번째 요청으로 부터 session이 생성되고 관련 타이머가 동작한다. (TimerSet: session.setMaxInactiveInterval(60*60); 초 단위)
    // 소멸: 세션 타이머가 만료되거나 코드상에서 명시적으로 세션을 소멸시킨다. ( session.invalidate(); )

   // 세션의 MasterLoginID 속성 읽어옴 -> 이미 로그인되어있지 않은지
   // 세션에 로그인 기록이 있는지 읽음(이번 예제는 application의 Attribute로 ID,Pwd 저장해놓음 loginProcess에 setAttrubute 존재)    
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
