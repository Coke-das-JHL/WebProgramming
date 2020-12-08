<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="jaehyeon.util.ConnectionContext" %>
<%@ page import="java.sql.*" %>
<html>
<body>
<%
   String msg = null;
   String sql = "SELECT 'hello jspbookdb!' AS msg";
   // 1. 커넥션 풀에서 java.sql.Connection 객체를 받아옴
   Connection conn = ConnectionContext.getConnection();
   // Connection 객체를 통해서 SQL구문을 입력받아 질의 수행 및 결과를 출력하는 
   // 2.Statement or PreparedStatement 객체를 얻는다.
   
   // *PreparedStatement 객체는 Statement객체를 확장한 것으로 더 효율적인 작업
   //  PreparedStatement pstmt = conn.prepareStatement("SELECT * FROM Student WHERE Age=? AND Major=?");
   //  pstmt.setInt(1,20);
   //  pstmt.setString(2,"computer science")
   //  ResultSet rs = pstmt.executeQuery();
   
   // ResultSet이 닫히는 경우 주의
   // ResultSet을 가져온 statement가 close되는 경우, ResultSet을 가져온 Statement가 또다시 다른 Query를 하는 경우
   // -> 새로운 stmt를 통해 Query를 수행
   PreparedStatement pstmt = conn.prepareStatement(sql);
   // 3. SQL질의를 수행한다.
  ResultSet rs = pstmt.executeQuery();
   if (rs.next())
   // 4. resultSet으로부터 데이터를 얻어온다.
      msg = rs.getString("msg");
   // 5. 생성되어 있는 ResultSet 객체 및 Statement객체를 닫는다. 
   rs.close();
   pstmt.close();
%>
쿼리문: <%=sql%><br/>
쿼리결과: <%=msg%><br/>
</body>
</html>
