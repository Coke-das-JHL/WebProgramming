<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<% 
Connection conn = ConnectionContext.getConnection();
Statement stmt = conn.createStatement();

int score = Integer.parseInt(request.getParameter("score"));
String ID=request.getParameter("ID");
String Name=request.getParameter("name");

stmt.executeUpdate("INSERT INTO student (ID, Name, Number) VALUES ('"+ID+"', '"+Name+"', '"+score+"');");

out.print("등록 완료");
%>
</body>
</html>
