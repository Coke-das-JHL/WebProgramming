<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<!-- %@ page import="jaeHyeon.bean.Member" % 
    Member member = new Member();
    member.setId(request.getParameter("id"); 
    같은 방식으로 사용하는 것도 가능하긴 함 -->

<!-- JavaBean의 사용 --> 
<!-- jsp:useBean jsp:setProperty jsp:getProperty 태크-->

<!-- 자바 빈 객체 생성:  id: 자바빈 객체 식별자 class: 자바빈 클래스의 완전한 이름을 명시, scope: 속성으로 저장될 Scope지정 (옵션)기본값은 page -->
<!-- id속성으로 지정한 이름이 해당 영역이 이미 저장되어 있다면 새로 생성하지 않고 이미 저장되어 있는 객체를 그대로 사용함 -->
<jsp:useBean id="member" class="jaeHyeon.bean.Member" scope="application" /> 
<%  
    // setter 메소드를 통해 값 설정
    member.setId("200910231");
    member.setName("홍길동");
    member.setPassword("112233");
    member.setEmail("hong@aaa.bbb.com");
    member.setRegisterDate(new Date());
%>
<!-- forward액션 태그: 하나의 JSP페이지에서 다른 JSP페이지로 요청 처리를 전달할 때 사용
     요청 URL주소는 바뀌지 않음
     forward후의 page출력만 나타남 이전에 출력이 발생한 경우 forward불가능, 에러 
     request scope 까지 Attribute 유지 -->
<jsp:forward page="useBean.jsp" />
