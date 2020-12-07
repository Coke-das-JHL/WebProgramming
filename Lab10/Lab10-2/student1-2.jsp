<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>alert</title></head>
<body>
<% 	String ID = request.getParameter("id"); 					//입력받은 아이디 받아옴
	Connection conn = ConnectionContext.getConnection();				//데이터 베이스와 연결된 커넥션 풀 가져옴
   	Statement stmt = conn.createStatement();					//Statement객체: SQL 구문을 입력받아 질의를 수행하고 결과값을 가져오는 작업을 지원                       

   ResultSet rs = stmt.executeQuery("SELECT count(*) AS recordCount FROM Student WHERE ID="+ID);  // ID가 200910001인 레코드 존재 확인   
   while(rs.next()){
      int recordCount = rs.getInt("recordCount");  	//개수를 받아옴
      if (recordCount != 1) {    			// ID가 200910001인 레코드가 존재하지 않는 경우 새로 레코드를 삽입
         stmt.executeUpdate("INSERT INTO Student (ID, Name, Age, Major) VALUES ('"+ID+"', '김송이', 20, 'science');");
      }else{  
    	  // recordCount: 1 -> 이미 존재하는 경우 alert
    	  %>
    	  <SCRIPT language="javascript">   
		  		//alert window객체의 메소드 경고창 
    	  			alert("ID:"+<%=ID%>+"already exist"); 
    	  </SCRIPT>
    	  <% 
      }
   }
%>
</body>
</html>
