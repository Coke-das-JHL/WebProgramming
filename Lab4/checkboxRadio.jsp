<%@ page contentType="text/html;charset=utf-8" %>
<%
request.setCharacterEncoding("utf-8"); // 한글 처리 구문
%>
<html>
<head><title>reform_jsp</title></head>
<body>
당신의 관심분야와 결혼여부는 다음과 같습니다.<br/>
<%
String[] interest = request.getParameterValues("cp");     // checkbox 복수개의 cp 값 받아오기

for (int i = 0; i < interest.length-1; i++)
{  %>
<b>
<%=interest[i]%>
</b>,  
<%  }  %>
<b><%=interest[interest.length-1]%></b>과    
<b><%=request.getParameter("M_Status")%></b>
<b><%=request.getParameter("S_Status")%></b>
</body>
</html>
