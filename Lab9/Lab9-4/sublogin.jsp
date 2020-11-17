<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<%
String ID = request.getParameter("id");  //ID입력 읽어옴
String PWD = request.getParameter("pw");  //이름 읽어옴
Connection conn = ConnectionContext.getConnection();
Statement stmt = conn.createStatement();
int recordCount=0;
try{
ResultSet rs = stmt.executeQuery("SELECT count(*) AS recordCount FROM login WHERE ID="+ID+";");   // ID 레코드 존재 확인
while (rs.next()){
	   recordCount = rs.getInt("recordCount");
	   // 입력받은 ID기록의 개수를 저장해 loginProcess.jsp에서 사용할 수 있도록 request.setAttribute에 저장한다.
	   request.setAttribute("recordCount", recordCount);
}
}catch(Exception e){
	request.setAttribute("recordCount", recordCount);
	out.print(" 존재하지 않는 ID");
}
%>
