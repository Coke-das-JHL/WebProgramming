<%@ page contentType="text/html;charset=utf-8" %> 
<%@ page import="java.util.Date" %>
<%! 
//로그인에 성공하는 경우 사용자의 이름과 지난 로그인 기록을 출력하려고 함

//로그인 기록을 저장하기 위한 클래스 이름과 Date 기록 저장 -> 객체를 Attribute로 저장함 => Lec12에서 JavaBean을 통해 객체 직렬화 저장
public class person{
	String name;
	Date date;
	
	person(String name, Date date){ //생성자
		this.name=name;
		this.date=date;
	}
}
%>

<%     // web.xml에 적혀있는 application paramter read -> application.getInitParamter("name")
	//<context-param>
	//<param-name>MasterID</param-name>
	//<param-value>jspbook</param-value>
	//</context-param>

	//<context-param>
	//<param-name>MasterPassword</param-name>
	//<param-value>112233</param-value>
	//</context-param>
      
      // application 활성범위: 서버 시작 ~ 종료
      // web.xml의 application parameter를 읽어옴
      String storedID = application.getInitParameter("MasterID"); 
      String storedPW = application.getInitParameter("MasterPassword");
      
      // form tag를 통해 입력한 내용을 읽음
      String id = request.getParameter("id");
      String name = request.getParameter("name");
      String pw = request.getParameter("pw");
      
      if (id==null) 				
      {  							//입력한 내용이 없거나, loginProcess.jsp에 바로 접근하는 경우
      %>  
      <a href="login.jsp">로그인을 먼저 하시오</a>
      <%  
      }
      else if (id.equals(storedID) && pw.equals(storedPW)) 	//ID password 일치하는 경우
      {            
      	 session.setAttribute("MasterLoginID", id);		//세션에 로그인 속성 저장  => Timer reset or 속성 제거로 로그인 세션 종료 가능
      								
         //첫 로그인과 로그인 이력이 있는지 구별: 로그인 성공시에 id를 name으로 하는 Attribute(Person객체로 저장)가 있는지 확인 
         person user =  (person)application.getAttribute(id);
         // 있는경우 로그인 기록 출력
         if(user != null)
	{  
        	out.print("지난 로그인 기록<br>");
        	out.print(user.name + "<br>");
        	out.print(user.date.toString() + "<br>" );
        	//지난 로그인기록을 출력하고 로그인 기록을 갱신
       	 	application.setAttribute(id, new person(name,new Date()));
       	}
	else
	{   
         	//없는 경우 첫로그인을 알리고 속성을 저장
         	out.print(" 첫 로그인<br> ");
         	application.setAttribute(id,new person(name,new Date()));
         }
	%>
   	<html>
   	<head><title>로그인 처리</title></head>
   	<body>
   	로그인에 성공했습니다. <br/><br/>
   	<a href="logincheck.jsp">로그인 체크</a>
   	</body>
   	</html>
   	<% }
      	else if (id.equals(storedID)) {   // 아이디 일치 & 패스워드 불일치
   	%>
   	<script>
   	alert("패스워드가 다릅니다."); 
   	history.go(-1);
   	</script> 
   	<%
      	} else {   // 아이디 불일치
   	%>
   	<script>  // javaScript의 Window객체의 메소드 alert 경고, Window객체의 하위객체인 history객체 앞으로가기 뒤로가기 구현가능
   	alert("로그인 ID가 다릅니다.");
   	history.go(-1);
   	</script>
   	<%
      	}
   	%>
