<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
로그인 하세요.
<form action="Lab45re.jsp" method="post" name="loginform">  
<!-- select 태그, size는 한번에 보이는 option의 개수
     multiple을 넣으면 여러개 선택 => String 배열로 받아야 함, request.getParameterValues(String name); -->
ID: <select name="st" size =1>     <!-- select name="st" size=1 multiple -->
<option selected>st1</option>      <!-- 초기 선택 옵션 설정 가능 -->
<option >st2</option>
<option >st3</option>
</select> <br/>
Password: <input type="text" name="pw"><br/>
Name: <input type="text" name="Name"><br/>
<input type="submit" value="로그인" name="login">
</form>
</body>
</html>
