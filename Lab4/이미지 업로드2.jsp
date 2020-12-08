<%@ page contentType="text/html;charset=utf-8" %>
<!-- 파일 업로드를 위해 cos 라이브러리를 import함 -->
<%@ page import="com.oreilly.servlet.MultipartRequest,
                           com.oreilly.servlet.multipart.DefaultFileRenamePolicy,
                           java.io.File" %>
<html>
<body> 
<% 
// 저장경로 절대경로를 사용함. application.getRealPath() 등의 메소드를 사용해도 가능함.
String savePath="/home/jaehyeon/eclipse-workspace/Lab4-2/WebContent/fileup/";
//전달할수 잇는 사이즈의 최댓값 설정. 5메가로 설정
int sizeLimit = 5 * 1024 * 1024 ;     

//파일업로드가 이루어지는 시점.!!!
MultipartRequest multi = new MultipartRequest(request, savePath, sizeLimit, "utf-8",new DefaultFileRenamePolicy());     

// 업로드가 정상적으로 이루어졌는지 체크
File file = multi.getFile("upfile");  // input 파일태그의 name
String fileName=file.getName();       // 파일명
long fileSize=file.length();          // 길이 
 
if(fileName == null) {    
   out.print("파일 업로드 되지 않았음 (이유: 파일 사이즈 초과 등)");
} else { 
   out.print("User Name : " + multi.getParameter("userName") + "<br>"); 
   out.print("File Name : " + fileName + "<br>");
   out.print("File Size : " + fileSize + "<br>");
}
out.print(savePath+"<br>");
%>
<!-- 저장한 이미지 다시 출력 -->
<img src="map.jpg"> 
</body>
</html>
