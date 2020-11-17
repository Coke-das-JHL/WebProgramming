<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>Insert title here</title></head>
<body>
<% 
String ID = request.getParameter("id");  //ID입력 읽어옴
String PWD = request.getParameter("pw");  //이름 읽어옴
%>
<!-- 입력된 ID와 PW를 sublogin.jsp에 넘겨준다. 로그인 결과 확인해서 반환-->
<jsp:include page="sublogin.jsp">
<jsp:param name ="id" value="<%=ID%>" /> 
<jsp:param name ="pw" value="<%=PWD%>" />
</jsp:include>
<%
Connection conn = ConnectionContext.getConnection();
// 입력된 ID에 대한 기록 존재 여부를 sublogin.jsp의 결과로 얻어 다음 실행을한다.
// sublogin.jsp에서 로그인 결과를 recordCount값에 저장하고 흐름이 돌아온다
int recordCount = (int)request.getAttribute("recordCount");
	   if(recordCount==1){  //레코드 존재하는 경우 -> 패스워드 일치여부 확인, succes, fail undate
		   	Statement stmt2 = conn.createStatement();
		   	ResultSet rs2 = stmt2.executeQuery("SELECT * FROM login WHERE ID="+ID+";");
		   	rs2.next();
	      	String real = rs2.getString("Passwd");
		    if(real.equals(PWD)){ //로그인 성공
		    		int success = rs2.getInt("success");
		    		int fail = rs2.getInt("fail");
		    		success++;
		    		stmt2.executeUpdate("UPDATE login SET success="+success+" WHERE ID="+ID+";");
		    		out.print("success: "+success+", fail: "+fail +"<br>");
		    		rs2 =stmt2.executeQuery("SELECT * FROM Student WHERE ID="+ID+";");
		    		rs2.next();
		    		String name_=rs2.getString("Name");
		    		String major_=rs2.getString("Major");
		    		int age_ = rs2.getInt("Age");
		    		out.print(ID+" "+name_+" "+major_+" "+age_);
		    		stmt2.close();
		    }else{ //로그인 실패
		    		int fail = rs2.getInt("fail");
		  	 		fail++;
		  	 		stmt2.executeUpdate("UPDATE login SET fail="+fail+" WHERE ID="+ID+";");
		  	 		out.print("로그인 실패");
		  	 		stmt2.close();
		    }
	   }
%>
</body>
</html>
