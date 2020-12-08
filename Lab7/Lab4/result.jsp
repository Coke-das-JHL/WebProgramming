<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<%  
	//자바 빈 객체에 저장하기 위해 하나의 선택된 전공을 하나의 String으로 만듦
	String[] major = request.getParameterValues("majors");
	String str="";
	for(int i=0 ; i< major.length ; i++){
		str=(str+major[i]);
	    if(i != major.length -1) str+=" and ";
	}	
%>
<%--자바 빈 객체 생성 --%>
<jsp:useBean id="std" class="jaeHyeon.bean.std" scope="request" />
<jsp:setProperty name="std" property="*" />
<jsp:setProperty name="std" property="major" value="<%=str%>"/>
<%
try{
	//파일이 이미 존재하는 경우 Exception을 발생시키지 않고 존재하는 아이디임을 알린 후 종료
	String realPath=application.getRealPath("/student/std"+std.getID()+".ser");
	FileInputStream fis = new FileInputStream(realPath);
	out.print("이미 존재하는 아이디 입니다.");
	fis.close();
}catch(Exception e){
//존재하지 않는 파일을 Open하려고 하는 경우 Exception발생
//새로운 파일을 열어서 객체를 저장한 후 종료
String realPath=application.getRealPath("/student/std"+std.getID()+".ser");
FileOutputStream fos = new FileOutputStream(realPath);
ObjectOutputStream oos = new ObjectOutputStream(fos);
oos.writeObject(std);
oos.close();
%>
당신이 입력한 정보입니다. <br>
ID: <jsp:getProperty name="std" property="ID"/><br/>
Name: <jsp:getProperty name="std" property="name"/><br/>
Age: <jsp:getProperty name="std" property="age"/><br/>
Major: <jsp:getProperty name="std" property="major"/><br/>
<% }
%>
<html>
<head><title>자바빈 객체 사용</title></head>
<body>
</body>
</html>
