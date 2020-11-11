<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>JDBC 예제</title></head>
<body>
당신이 입력한 정보 입니다. <br>
<%
String ID = request.getParameter("ID");  //ID입력 읽어옴
String name_ = request.getParameter("name");  //이름 읽어옴
String age_ = request.getParameter("age"); 	//나이 읽어옴
String major_=request.getParameter("major");	//전공 읽어옴
out.print("ID: "+ID+"<br>");
out.print("Age: "+age_+"<br>");
out.print("Name: "+name_+"<br>");
out.print("Major: "+major_+"<br>");

// 1. Connection
Connection conn = ConnectionContext.getConnection();
// 2. Statement
Statement stmt = conn.createStatement();
// 3. 질의 수행 및 ResultSet반환
ResultSet rs = stmt.executeQuery("SELECT count(*) AS recordCount FROM Student WHERE ID="+ID+";");   // ID 레코드 존재 확인
while(rs.next()){
   int recordCount = rs.getInt("recordCount");
   
   if( recordCount == 1){ 							//레코드 존재하는 경우
	   Statement stmt2 = conn.createStatement();
	   stmt2.executeUpdate("UPDATE Student SET Name='"+name_+"' WHERE ID="+ID+";");
	   stmt2.executeUpdate("UPDATE Student SET Age='"+age_+"' WHERE ID="+ID+";");
	   stmt2.executeUpdate("UPDATE Student SET Major='"+major_+"' WHERE ID="+ID+";");
       stmt2.close();
   }
   else{//레코드 존재하지 않는 경우
	   Statement stmt2 = conn.createStatement();
	   stmt2.executeUpdate("INSERT INTO Student (ID, Name, Age, Major) VALUES ('"+ID+"', '"+name_+"', "+age_+", '"+major_+"');");
	   stmt2.close();
        }
 }
rs.close();
stmt.close();
%>
</body>
</html>
