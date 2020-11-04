<%@ page contentType="text/html;charset=utf-8" %>
<%
   String storedID = application.getInitParameter("MasterID"); 
   String storedPW = application.getInitParameter("MasterPassword"); 

   String id = request.getParameter("id");
   String pw = request.getParameter("pw");
   if (id.equals(storedID) && pw.equals(storedPW)) {   	// 아이디와 패스워드 모두 일치
      session.setAttribute("MasterLoginID", id);  		// 로그인 성공을 나타내는 특정속성 설정
%>
<html>
<head><title>로그인 처리</title></head>
<body>
로그인에 성공했습니다. <br/><br/>
<a href="loginCheck.jsp">로그인 체크</a> 
</body>
</html>
<%	   	//아이디 저장하기 체크박스 체크
		// request response는 string 전달 권장
      String IDStore = request.getParameter("idstore");  	//체크박스 입력
      if (IDStore != null && IDStore.equals("store")) {  	//체크된 체크박스가 store값인 경우
         Cookie cookie = new Cookie("id", id);				// 사용자가 입력한 ID를 쿠키로 저장
         response.addCookie(cookie);
         out.println("<a href='login2.jsp'>로그인 화면 다시 보기</a>");
      }
   } else if (id.equals(storedID)) {    						// 아이디 일치 & 패스워드 불일치
%>
<script>
alert("패스워드가 다릅니다."); 
history.go(-1);
</script> 
<%
} else {  // 아이디 불일치
%>
<script>
alert("로그인 ID가 다릅니다.");
history.go(-1);
</script>
<%
   }
%>
