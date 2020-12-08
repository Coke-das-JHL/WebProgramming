<%@ page contentType="text/html;charset=utf-8" %> 
<%    String storedID = application.getInitParameter("MasterID"); 
      String storedPW = application.getInitParameter("MasterPassword"); 
      String id = request.getParameter("id");
      String pw = request.getParameter("pw");
      request.setAttribute("id", id);
      String URL=null; //로그인 성공 여부에 따라 성공URL, 실패URL이 저장됨 
      if (id.equals(storedID) && pw.equals(storedPW)) {   //ID password 일치하는 경우
    	  URL="loginSuccess.jsp";
      	  request.setAttribute("id",id);   //loginSuccess.jsp에서 출력할 ID를 Attribute로 전달  
      }else{
    	  URL="loginFail.jsp";
    	  request.setAttribute("id",id);   //loginFail.jsp에서 출력할 ID, Password를 Attribute로 전달
    	  request.setAttribute("pw",pw);  //forward로 흐름제어하기 때문에 request객체 저장 가능
      }
       %>
   <html>
   <body>
   <!-- 로그인 성공 여부에 따른 forward -->
   <!-- jsp:forward page="이동할 페이지 절대경로, 상대경로 사용가능" 
      forward되어도 웹 브라우저의 주소는 최초 요청 JSP페이지의 주소이다. 즉 사용자는 알지 못함
      forward이전에 버퍼에 저장된 내용은 모두 버려짐, 출력되는 경우 에러 발생 -> 버퍼를 사용하지 않으면 forward액션태그 사용 불가능
      
      사용자가 서버로 보내는 조건에 따라 다른 화면을 보여줄 때 유용함
      -->
   <jsp:forward page="<%=URL%>"/>
   </body>
   </html>;
