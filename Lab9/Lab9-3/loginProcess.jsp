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
   <jsp:forward page="<%=URL%>"/>
   </body>
   </html>;
