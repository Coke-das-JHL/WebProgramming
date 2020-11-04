<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<jsp:useBean id="member" class="jaeHyeon.bean.Member" scope="application" /> 
<%  //자바 빈 객체 생성 -> id: 자바빈 객체 식별자 , scope는 옵션 기본값은 page
    // setter 메소드를 통해 값 설정
    member.setId("200910231");
    member.setName("홍길동");
    member.setPassword("112233");
    member.setEmail("hong@aaa.bbb.com");
    member.setRegisterDate(new Date());
%>
<jsp:forward page="useBean.jsp" />
