<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8"); 
%>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	String ans1=request.getParameter("a_0");
	String ans2=request.getParameter("a_1");
	String ans3=request.getParameter("a_2");
	
	String check1=(String)session.getAttribute("0");
	String check2=(String)session.getAttribute("1");
	String check3=(String)session.getAttribute("2");
	
	boolean an1 = ans1.equals(check1);
	boolean an2 = ans2.equals(check2);
	boolean an3 = ans3.equals(check3);

	String c1,c2,c3;
	if(an1) c1 = "정답"; else c1="오답";
	if(an2) c2 = "정답"; else c2="오답";
	if(an3) c3 = "정답"; else c3="오답";
	
	out.print("1번. "+c1+"<br>");
	out.print("2번. "+c2+"<br>");
	out.print("3번. "+c3+"<br>");
%>
</body>
</html>
