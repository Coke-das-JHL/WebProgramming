<%@ page contentType="text/html;charset=utf-8"%>
<html>
<head><title>Context 초기 파라미터 활용</title></head>
<body>
<% 
String appName = application.getInitParameter("appName"); 
String appVersion = application.getInitParameter("appVersion"); 
String path=application.getRealPath("/"); 
out.print(path +"<br>");  <!-- /home/jaehyeon/eclipse-workspace/.metadata/.plugins/org.eclipse.wst.server.core/tmp0/wtpwebapps/Lab5/-->
%> 
appName: <%= appName %><br/>          <!-- appName: jspbook  -->
appVersion: <%= appVersion %><br/>    <!--appVersion: 1.0-->
</body>
</html>

<!-- 
application 기본객체. 활성범위 서버의 시작과 종료 동일 webapps내에서 참조 가능

getRealPath: Webapps까지 절대 경로
getResource(String path): URL로 리턴
getParameterNames()
getInitParameter(String name)

<context-param>
  <param-name>appName</param-name>
  <param-value>jspbook</param-value>
</context-param>

<context-param>
  <param-name>appVersion</param-name>
  <param-value>1.0</param-value>
</context-param>
 -->
