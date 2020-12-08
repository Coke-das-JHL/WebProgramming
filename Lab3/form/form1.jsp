<!-- form 태그 사용자에게 정보를 요청하고 대답을 얻어낼 수 있음 -->
<!-- action: submit시에 서버쪽에서 실행 가능한 프로그램의 URL
     method: get/post
     <input type= text/password/checkbox/radio/hidden/submit/reset>
     <textArea name="name" rows="n" cols="m">
     <select name="name">
          <option ... > ...
-->

<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8">
<title>textform</title>
</head>
<body>
가입할 ID 와 Password 및 자기소개를 입력하세요.
<form action="Lab44re.jsp" method="get" name="textform">
ID : <input type="text" name="id"><br/>
Password : <input type="password" name="pw"><br/>
자기소개<br/>
<textarea name="desc" cols="50" rows="4"></textarea><br>
<center>
<input type="submit" value="전송" name="submitbtn">
<input type="reset" value="초기화" name="resetbtn">
</center>
</form>
</body>
</html>
