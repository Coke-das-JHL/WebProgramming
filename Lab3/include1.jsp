<!-- 지시문 종류 %@  page(contentType, import,buffer,autoflush ...) , include
      %@ page 속성1="속성값" import="~" ....
      %@ include file="fileName" 
-->

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
<!-- include지시문: 지정한 파일의 내용을 그대로 현재 위치에 삽입시킨 후 Java파일로 변환
      공용 변수가 많은 경우, 중복되어 사용되는 텍스트나 문구가 있는 경우 사용
      include이후에 jspf의 내용을 현재 jsp에서 참조 -->
<!-- jsp:include 액션태그의 경우 제어 흐름이 아예 이동 -->
<%@ include file="date.jspf" %>    
입니다.
<br/>
<%= jspf_var %>
</body>
</html>
