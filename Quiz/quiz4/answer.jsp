<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% request.setCharacterEncoding("utf-8"); %>
<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<SCRIPT languange="JavaScript">
function correctInput()
{
	if(!register.name.value || !register.ID.value){
		alert("질문에 대답하시오");}
	else{
		register.submit();
	}
}
</SCRIPT>
</head>
<body>
<%
	int you=0;
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
	if(an1){ c1 = "정답"; you++;} else c1="오답";
	if(an2){ c2 = "정답"; you++;}else c2="오답";
	if(an3){ c3 = "정답"; you++;}else c3="오답";
	out.print("1번. "+c1+"<br>");
	out.print("2번. "+c2+"<br>");
	out.print("3번. "+c3+"<br>");
%>
<%
Connection conn = ConnectionContext.getConnection();
Statement stmt = conn.createStatement();
int sum=0;
int count=0;

ResultSet rs= stmt.executeQuery("SELECT * FROM student;");
while(rs.next()){
	count++;
	sum += Integer.parseInt(rs.getString("Number"));
}
%>
<br>
이전 정답수 평균:<%= (double)sum/count %><br>
당신의 정답 수:<%=you %><br>

<form name="register" method="POST" action="register.jsp">
이름과 학번을 입력하세요.<br>
이름:<Input type="text" Name="name"> <br>
학번:<Input type="text" Name="ID"> <br>
<input type="hidden" Name ="score" value="<%=you%>">  <!-- 정답수 hidden으로 넘김 -->
<Input type="button" Value="제출" onClick="correctInput()" >
</form>
</body>
</html>
