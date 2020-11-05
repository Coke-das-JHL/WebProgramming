<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head><title>회원가입 입력 폼</title></head>
<body>
<!-- 회원 가입과 회원 정보 저장 기능 구현 -->
<!-- request.getContextPath() : 프로젝트 path만 얻어온다.
예) http://localhost:8081/board/list.jsp
     return: /board
request.getRequestURI() : 프로젝트와 파일경로까지 얻어온다.
예) http://localhost:8081/board/list.jsp
     return: /board/list.jsp -->
<form action="<%= request.getContextPath() %>/register2.jsp" method="post">
<table border="1" cellpadding="0" cellspacing="0">
<tr>
<td>아이디</td>
<td><input type="text" name="id" size="15"></td>
<td>비밀번호</td>
<td><input type="password" name="password" size="10"></td>
</tr>
<tr>
<td>이름</td>
<td colspan="3"><input type="text" name="name" size="15"></td>
</tr>
<td>이메일</td>
<td colspan="3"><input type="text" name="email" size="30"></td>
</tr>
<tr>
<td colspan="4" align="center">
<input type="submit" value="회원가입">
</td>
</tr>
</table>
</form>
</body>
</html>
