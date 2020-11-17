<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="UTF-8">
<title>Fail</title>
</head>
<body>
로그인에 실패했습니다. <br>
id = <%= request.getAttribute("id") %> <br>
passwd = <%= request.getAttribute("pw") %> 다시 로그인 하시겠습니까?<br>
<a href="login.html">로그인 화면</a> 
</body>
</html>
