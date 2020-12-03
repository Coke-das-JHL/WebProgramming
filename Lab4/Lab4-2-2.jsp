<!-- Enumeration 사용 -->

<%@page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Enumeration" %> 	<!-- import -->
<% request.setCharacterEncoding("utf-8"); %>
<%! String edu,na;
    String[] like;%>
<html>
<body>
당신의 학력, 소속국가 및 관심분야는 다음과 같습니다.<br/>
<%  
// Enumeration객체를 얻기 위한 메소드 request.getParameterNames() 
// enums.hasMoreElements()  -> T/F 반환, 다음 객체가 존재하는지
// enums.nextElement() -> 다음 Element로 pointer를 이동하고 반환

Enumeration enums = request.getParameterNames();
while (enums.hasMoreElements())
{
	String name=(String)enums.nextElement();
	if(name.equals("edu"))
		edu=request.getParameter(name);
	else if(name.equals("na"))
		na=request.getParameter(name);
	else if(name.equals("like"))
		like=request.getParameterValues(name);
}
%>

<b><%= edu%></b> 과 <b><%=na%></b><br/>
<b><%
if (like != null) {
for (int i=0;i<like.length;i++) {
out.println(like[i]);
}
}
%></b>
</body>
</html>
