<%@ page contentType="text/html;charset=utf-8" %>
<%  //페이지 접근을 위해 무조건 pamameter를 넘겨주어야 함 
String targetPage=request.getParameter("target") + "2.jsp";
%>

<html>
<head><title>템플릿+모듈화</title></head>
<body>
<table width="500" border="1" cellpadding="5" align="center">
<tr>
<td colspan="2">
<jsp:include page="top.jsp" flush="false" />   
</td>
</tr>
<tr>
<td width="80%" valign="middle">
<!-- targetPage, 템플릿 구조 -->
<jsp:include page="<%= targetPage%>" flush="false" />
</td>
<td valign="top">
<jsp:include page="menu.jsp" flush="false" /> 
</td>
</tr>
<tr>
<td colspan="2">
<jsp:include page="bottom.jsp" flush="false" />  
</td>
</tr>
</body>
</html>
