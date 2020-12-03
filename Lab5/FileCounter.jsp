<%@ page contentType="text/html;charset=utf-8"%>
<%@ page import = "java.io.*" %>
<html>
<body>
<center>
<%
String readResourcePath = "/example1/count.txt";                  // getRealPath("/")만 하면 webapps까지의 절대주소가 반환   
String writeResourcePath = readResourcePath;
String realReadPath = application.getRealPath(readResourcePath);  // webapps폴더까지의 경로에 readResourcePath String을 붙여서 반환
String realWritePath = application.getRealPath(writeResourcePath);
BufferedReader br = null;
PrintWriter pr = null;
String count = null;

try {
  br = new BufferedReader(new FileReader(realReadPath));
  count = br.readLine().trim();             //한 줄 읽어서 문자열의 맨 처음, 맨 뒤 공백, enter문자 없앰  
  br.close();
  session.setMaxInactiveInterval(10);				// 세션 시간 설정
  if (session.isNew()) { 
    pr = new PrintWriter (new FileWriter(realWritePath));
    int num = Integer.parseInt(count);
    pr.println(num+1);  
    pr.close();
  }
} catch(IOException ex) {
  out.println("예외 발생: " + ex.getMessage());
}
%>
방문자수 : <%= count %>명
</center>
</body>
</html>
