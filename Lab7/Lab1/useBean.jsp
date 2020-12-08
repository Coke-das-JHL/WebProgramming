<%@ page contentType="text/html;charset=utf-8" %>
<jsp:useBean id="member" class="jaeHyeon.bean.Member" scope="application" />
<!-- scope가 request로 되는 경우 다음 useBean.jsp 바로 접근시 출력은 null -->
<!--자바빈 객체 생성시 스코프내에 존재하는 같은 이름의 자바빈 객체가 존재하는 경우 그대로 사용 
    class 속성 대신 type속성을 사용하면 id이름의 객체가 존재한다는 가정하에 수행 존재하지 않을 경우 Error를 발생시킴-->
<html>
<head><title>자바빈 객체 사용</title></head>
<body>
<!--getter 메소드 사용 -->
<%= member.getName() %> (<%= member.getId() %>) 회원님 안녕하세요.<br/>
당신의 이메일은 <%= member.getEmail() %>입니다. <br/>
당신의 가입 날짜는 <%= member.getRegisterDate() %>입니다. 

</body>
</html>
