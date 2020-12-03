<%@ page contentType="text/html; charset=UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>textform</title>
</head>
<body>
가입할 ID와 Password 및 자기소개를 입력하시오
<!-- method get: ? 뒷부분에 쿼리스트링으로 전달, 간단한 데이터 빠른 처리, 적은 데이터 이용 많은 데이터 수신할 때 유용
      vs post (enctype 타입 지정 가능 파일 업로드시: multipart/form-data): 요청 헤더 뒤에 입력스트림 통해 전달, 사용자가 확인 불가 같은 양에 대해서 get보다 느림, 보안 -->
<form action="Lab4ch7page10.jsp" method="post" name="textform">
ID: <input type="text" name="id"> <br/>
Password: <input type="password" name="pw"><br/>
자기소개<br/>
<!-- select와 textarea의 경우 input 태그에 포함되지 않음 -->
<textarea name="desc" cols="50" rows="4"> </textarea> <br/>
<center>
<!-- submit, reset의 경우 value값이 버튼 위에 쓰임 -->
<input type="submit" value="전송" name="submitbtn">
<input type="reset" value="초기화" name="resetbtn">
</center>
</form>
</body>
</html>
