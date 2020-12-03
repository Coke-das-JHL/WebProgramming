<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import = "java.io.*" %> <!--getInputStream을 사용하기 위해 import -->

<%
out.print("<h2>" + request.getContentType() + "</h2>");

InputStream ins = request.getInputStream();
int data = -1;
<!-- defulat encoding type을 사용하면 파일 경로와 이름까지만 전달, 
     multipart/form-data encoding type을 사용하면 파일 데이터의 스트림까지 전달 확인 가능-->
while ( (data = ins.read()) != -1 ) {
     out.print((char)data);
}
%>
