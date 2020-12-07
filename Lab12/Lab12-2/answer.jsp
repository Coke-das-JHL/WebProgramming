<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String day=request.getParameter("day");
	String Korea=request.getParameter("Korea");
	String Asia=request.getParameter("Asia");
	String insect=request.getParameter("insect");
	String whale=request.getParameter("whale");

	boolean check1 = day.equals("2");
	boolean check2 = Korea.equals("서울");
	boolean check3 = Asia.equals("2");
	boolean check4 = insect.equals("4");
	boolean check5 = whale.equals("2");
	
	out.print("1. "+check1+"<br>");
	out.print("2. "+check2+"<br>");
	out.print("3. "+check3+"<br>");
	out.print("4. "+check4+"<br>");
	out.print("5. "+check5+"<br>");
%>
</body>
</html>
