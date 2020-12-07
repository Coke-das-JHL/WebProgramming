<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<%
//입력받은 정보를 People Database 에 저장 
Connection conn = ConnectionContext.getConnection();
Statement stmt = conn.createStatement();

String ID = request.getParameter("ID");  //ID 읽어옴
String PWD = request.getParameter("pwd");  //pwd읽어옴
String name = request.getParameter("name");  //name 읽어옴
String pri1 = request.getParameter("pri1");  //pri1 읽어옴
String pri2 = request.getParameter("pri2");  //pri2 읽어옴
pri1=pri1+"-"+pri2;

stmt.executeUpdate(   "INSERT INTO People (ID, PWD, NAME, REGISTRATION) VALUES ('"+ID+"', '"+PWD+"', '"+name+"', '"+pri1+"');"  );
stmt.close();
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
저장 완료
</body>
</html>
