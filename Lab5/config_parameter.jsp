<%@ page contentType="text/html;charset=utf-8"%>

<!--  config 기본 객체: Servlet(페이지)마다 config 기본 객체가 생성  
	getInitParameterNames()
	getInitParameter(String name)
	getServletContext() : 기본 객체 반환
	
	web.xml에 <servlet> 태그에 지정
	
<servlet>
  <servlet-name>readParamJSP</servlet-name>
  <jsp-file>/example1/readParam.jsp</jsp-file>
  <init-param>
    <param-name>e-mail</param-name>
    <param-value>hong@mail.com</param-value>
  </init-param>
  <init-param>
    <param-name>emailHost</param-name>
    <param-value>151.68.167.201</param-value>
  </init-param> 
  <init-param>
    <param-name>webMaster</param-name>
    <param-value>홍길동</param-value>
  </init-param>
</servlet>

<servlet-mapping>           				 매핑 정보
  <servlet-name>readParamJSP</servlet-name>		 위의 서블릿 태그에서 같은 Servlet-name의 jsp-file의 출력 반환
  <url-pattern>/example1/readParam2.jsp</url-pattern>    이 주소로 접근한 경우만 Parameter사용가능
</servlet-mapping>
-->
<%!
  String emailHost = null;
  String webMaster = null;

  public void jspInit() {
    ServletConfig myConfig = getServletConfig();  	 //이렇게 사용할 수도 있고
    emailHost = myConfig.getInitParameter("emailHost");  //getInitParameter메소드를 통해 값 읽어옴
    webMaster = myConfig.getInitParameter("webMaster");  //선언한 멤버메소드를 호출하지 않아도 아래 출력에서 정상적인 출력이 가능한 이유는?
  }
%>
<table border="1"> 
<tr>
<td>email server</td>
<td><%=emailHost%></td>
</tr> 
<tr>
<td>WebMaster</td>
<td><%=webMaster%></td>
</tr>
</table>			
E-mail: <%=config.getInitParameter("e-mail")%>  <!-- 이렇게 사용할 수도 있음 -->		
</body>
</html>
