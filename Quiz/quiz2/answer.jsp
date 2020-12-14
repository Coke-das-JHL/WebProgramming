<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>quiz2</title>
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
	
	String c1,c2,c3,c4,c5;
	if(check1) c1 = "정답"; else c1="오답";
	if(check2) c2 = "정답"; else c2="오답";
	if(check3) c3 = "정답"; else c3="오답";
	if(check4) c4 = "정답"; else c4="오답";
	if(check5) c5 = "정답"; else c5="오답";
	
	out.print("1번. "+c1+"<br>");
	out.print("2번. "+c2+"<br>");
	out.print("3번. "+c3+"<br>");
	out.print("4번. "+c4+"<br>");
	out.print("5번. "+c5+"<br>");
%>
</body>
</html>
