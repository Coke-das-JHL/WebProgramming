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
	if(!question.a_0.value || !question.a_1.value || !question.a_2.value){
		alert("질문에 대답하시오");
	}
	else{
		question.submit();
	}
}
</SCRIPT>
</head>
<body>
<form name="question" method="POST" action="answer.jsp">
<%
Connection conn = ConnectionContext.getConnection();
Statement stmt = conn.createStatement();

int q1=100; //q1: 첫번째 제출된 문제 flag
int q2=100; //q2: 두번째 제출된 문제 flag
int r;
boolean count=false;
//3문제 데이터 베이스에서 뽑아 제출
for(int i=0;i<3;i++){
	//중복방지
	do{
	r = (int) Math.floor( Math.random()*6 ) + 1;
	}while(q1==r || q2==r);
	if(!count){ q1=r; count = true;} else q2=r;
	
	ResultSet rs= stmt.executeQuery("SELECT * FROM Quiz WHERE id="+r+";");
	rs.next();
	String quiz=rs.getString("question");
	if(!quiz.equals("수도")){ 	//radio버튼
	String choice1=rs.getString("choice1");
	String choice2=rs.getString("choice2");
	String choice3=rs.getString("choice3");
	String choice4=rs.getString("choice4");
	String answer =rs.getString("answer");
	session.setAttribute(Integer.toString(i),answer);  // 문제의 정답을 Attribute로 저장
	out.print(quiz+"<br>");
	%>
	<Input type="radio" Name="a_<%= i%>" value="1"> <%=choice1 %>
	<Input type="radio" Name="a_<%= i%>" value="2"> <%=choice2 %>
	<Input type="radio" Name="a_<%= i%>" value="3"> <%=choice3 %>
	<Input type="radio" Name="a_<%= i%>" value="4"> <%=choice4 %> <br>
	<% } 
	else{ //text field
	%> 
	한국의 수도는? <BR>
	<Input type="text" Name="a_<%= i%>"> <br>
	<%
	String answer =rs.getString("answer");
	session.setAttribute(Integer.toString(i),answer);
	}
	}%>
<Input type="button" Value="제출" onClick="correctInput()" >
</form>
</body>
</html>

<!-- 
mysql> select * from Quiz;
+----+-----------------------+--------+--------------+-----------+-----------------+------------+
| id | question              | answer | choice1      | choice2   | choice3         | choice4    |
+----+-----------------------+--------+--------------+-----------+-----------------+------------+
|  1 | 광복절                | 2      | 10월3일      | 8월15일   | 3월1일          | 12월25일   |
|  2 | 수도                  | 서울   | NULL         | NULL      | NULL            | NULL       |
|  3 | 아시아                | 2      | 미국         | 중국      | 멕시코          | 영국       |
|  4 | 곤충                  | 4      | 독수리       | 코끼리    | 거북이          | 사마귀     |
|  5 | 고래는?               | 2      | 파충류       | 포유류    | 갑각류          | 조류       |
|  6 | 한글창제하신분        | 1      | 세종대왕     | 의장왕    | 광개토대왕      | 이명박     |
+----+-----------------------+--------+--------------+-----------+-----------------+------------+
6 rows in set (0.00 sec)
-->

