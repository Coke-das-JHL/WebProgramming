<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>textform</title>
</head>
<body>
가입할 ID와 Password 및 자기소개를 입력하시오
<form action="Lab4ch7page10.jsp" method="post" name="textform">
ID: <input type="text" name="id"> <br/>
Password: <input type="password" name="pw"><br/>
자기소개<br/>
<textarea name="desc" cols="50" rows="4"> </textarea> <br/>
<center>
<input type="submit" value="전송" name="submitbtn">
<input type="reset" value="초기화" name="resetbtn">
</center>
</form>
</body>
</html>
