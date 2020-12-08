<!-- 페이지 접근횟수를 파일에 저장 -->
<%@ page contentType="text/html;charset=utf-8" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.io.*" %>
<% 
    request.setCharacterEncoding("utf-8");
	
    String realPath = application.getRealPath("/count.ser");  		 	//count.ser파일에 저장
    try{	
   		    FileInputStream fis = new FileInputStream(realPath); 	//파일을 열려고 할때 첫 접근인 경우 exception발생
   		    ObjectInputStream ois = new ObjectInputStream(fis);		//파일이 이미 존재하는 경우 실행
   		    Object o = ois.readObject();				//객체를 읽어옴
   		    jaeHyeon.bean.counter p = (jaeHyeon.bean.counter) o;	//Object객체로 쓰고 읽기 때문에 형 변환이 필수임
   		    ois.close();
   		    int temp=p.getCount();					//출력하지 않으려면 getter메소드를 사용
   		    temp=temp+1;
   		    out.print("접근 횟수: " + temp+ "<br>");
   		    out.print(p.getRecentDate().toString());
   		    p.setCount(temp);						//객체에 저장된 값 수정 후 다시 저장
   		    p.setRecentDate(new Date());
   		    FileOutputStream fos = new FileOutputStream(realPath);
   		    ObjectOutputStream oos = new ObjectOutputStream(fos);
   		    oos.writeObject(p);
   		    oos.close();
    }catch(Exception e){
    		    //파일이 존재하지 않는 경우 = 첫 접근
		    out.print("접근 횟수: 1");
		    FileOutputStream fos = new FileOutputStream(realPath);
		    ObjectOutputStream oos = new ObjectOutputStream(fos);
%>     
		    <%-- 첫 접근인 경우 파일 생성해서 자바 빈 객체를 저장 --%>
		    <jsp:useBean id="access" class="jaeHyeon.bean.counter" />
		    <jsp:setProperty name="access" property="count" value="1"/>
		    <jsp:setProperty name="access" property="recentDate" value="<%= new Date() %>" />
<%
		    oos.writeObject(access);
		    oos.close();
	     }
    
%>
<html>
<head><title>Counter</title></head>
<body>
</body>
</html>
