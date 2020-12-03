<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<title>include 지시문</title>
</head>
<body>
<%
String start ="[";
String end ="]";
%>
현재의 날짜와 시각은 
<!-- include지시문: 지정한 파일의 내용을 그대로 현재 위치에 삽입시킨 후 Java파일로 변환 -->
<%@ include file="date.jspf" %>    
입니다.
<br/>
<%= jspf_var %>
</body>
</html>
