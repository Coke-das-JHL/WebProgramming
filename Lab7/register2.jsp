<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!-- 회원 가입과 회원 정보 저장 기능 구현 -->
<jsp:useBean id="member" class="jaeHyeon.bean.Member" />
<!-- 생성되어 있는 자바빈의 property값을 지정 -->
<!-- property값에 *을 사용하면 request객체로 전달된 name값과 property name이 같은 경우 매칭됨 -->
<jsp:setProperty name="member" property="*" />
<jsp:setProperty name="member" property="registerDate" value="<%= new Date() %>" />
<%
   member.setPassword(request.getParameter("password"));
   String realPath = application.getRealPath("/member_"+member.getId());
   //application.getRealPath("/") webapps까지의 경로저장
   //localhost:8081/Lab7/register2.jsp -> Lab7까지 경로
   
   //객체 파일로 저장
   FileOutputStream fos = new FileOutputStream(realPath); 
   ObjectOutputStream oos = new ObjectOutputStream(fos);
   oos.writeObject(member); //객체 쓰기
   oos.close();
%>
<html>
<head><title>가입 처리</title></head>
<body>
회원 가입 처리 완료 <br/>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
<td>아이디</td>
<td><jsp:getProperty name="member" property="id" /></td>
</tr>
<tr>
<td>이름</td>
<td><jsp:getProperty name="member" property="name" /></td>
</tr> 
<td>이메일</td>
<td><jsp:getProperty name="member" property="email" /></td>
</tr>
<tr>
<td>가입일시</td>
<td><jsp:getProperty name="member" property="registerDate" /></td>
</tr>
</table>
<a href="loginMember.jsp">로그인</a>
</body>
</html>
