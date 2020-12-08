<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<html>
<head><title>JDBC 예제</title></head>
<body>
당신이 입력한 정보 입니다. <br>
<%
String ID = request.getParameter("ID");  	//ID입력 읽어옴
String name_ = request.getParameter("name");    //이름 읽어옴
String age_ = request.getParameter("age"); 	//나이 읽어옴
String major_=request.getParameter("major");	//전공 읽어옴
out.print("ID: "+ID+"<br>");
out.print("Age: "+age_+"<br>");
out.print("Name: "+name_+"<br>");
out.print("Major: "+major_+"<br>");

// 1. Connection 객체 생성
Connection conn = ConnectionContext.getConnection();

// 2. Statement 객체 생성
Statement stmt = conn.createStatement();

// 3. 질의 수행 및 ResultSet반환
// stmt.executeQuery(String sql) -> 데이터를 추출하기 위한 sql문을 수행할 때, ResultSet객체로 반환함
// stmt.executeUpdate(String sql) -> 데이터 추출이 없는 sql문 수행, 영향 받은 레코드 행 개수를 int형으로 반환
ResultSet rs = stmt.executeQuery("SELECT count(*) AS recordCount FROM Student WHERE ID="+ID+";");   // ID 레코드 존재 확인

while(rs.next()){
   int recordCount = rs.getInt("recordCount");					//값을 읽어옴
   
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
// 4. ResultSet객체 및 Statement객체를 닫음
rs.close();
stmt.close();
%>
</body>
</html>
