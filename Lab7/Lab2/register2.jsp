<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%
request.setCharacterEncoding("utf-8");
%>
<!-- 회원 가입과 회원 정보 저장 기능 구현 -->
<jsp:useBean id="member" class="jaeHyeon.bean.Member" />

<!-- jsp:setProperty 이미 생성되어 있는 자바빈 객체의 property값을 지정 -->
<!-- name: 자바빈id / property: property이름  / value: 값, Expression 사용가능 -->
<!-- value값 대신 param="tagName"을 사용하면 request 객체가 저장하는 파라미터 값을 프로퍼티 값으로 지정가능함 -->
<!-- property값에 *을 사용하면 request객체로 전달된 name값과 property name이 같은 경우 매칭됨 -->

<jsp:setProperty name="member" property="*" />
<jsp:setProperty name="member" property="registerDate" value="<%= new Date() %>" />

<% //객체 직력화를 통해 파일로 저장하기
   member.setPassword(request.getParameter("password"));
   String realPath = application.getRealPath("/member_"+member.getId()); //application.getRealPath("/") webapps까지의 경로저장
   
   FileOutputStream fos = new FileOutputStream(realPath); 
   ObjectOutputStream oos = new ObjectOutputStream(fos);
   oos.writeObject(member);                         // 입출력 스트림 객체를 만들면 writeObject(id) / readObject(id) 메소드를 통해 파일에 쓰고 읽기 가능 
   oos.close();
%>
<html>
<head><title>가입 처리</title></head>
<body>
회원 가입 처리 완료 <br/>
<table width="400" border="1" cellpadding="0" cellspacing="0">
<tr>
<td>아이디</td>
   
<!-- getProperty: 자바빈 객체의 프로퍼티 값을 가져올 때 사용 --> 
<!-- jsp:Property name="name" property="propertyName" -->
<!-- 수행되면 가져온값을 바로 HTML으로 출력함 출력하지 않으려면 getter메소드 사용-->
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
