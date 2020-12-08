<%@ page contentType="text/html;charset=utf-8" %>
<% 
    //템플릿 구조로 구현
    //페이지 접근을 위해 무조건 pamameter를 넘겨주어야 함 
    // ~/Lab9-1/home.jsp?tartget=home
    // ~/Lab9-1/home.jsp?tartget=info
    // ~/Lab9-1/home.jsp?tartget=music
String targetPage=request.getParameter("target") + "2.jsp";
%>

<!-- jsp:include page="page.jsp" fulsh="T/F" 
    지정한 페이지를 태그가 위치한 부분에 포함시킬 때 활용, 액션태그 이전의 출력버퍼 내용 버리지 않고 전체 실행 결과에 포함시킴, 페이지 모듈화에 유용
    flush="false": 버퍼에 저장한 채 요청 흐름이 이동
    flush="true"(default): 버퍼의 내용을 먼저 브라우저로 출력하고 요청흐름이 이동 -> 헤더 정보 추가/변경 불가능 
-->
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
