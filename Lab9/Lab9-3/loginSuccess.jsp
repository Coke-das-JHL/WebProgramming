<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Success</title>
</head>
<body>
로그인에 성공했습니다. <br>
<!-- forward되어도 request객체의 Attribute읽어올 수 있음 -->
** id = <%= request.getAttribute("id") %>
</body>
</html>
