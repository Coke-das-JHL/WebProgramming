<%@ page contentType="text/html;charset=utf-8" %>
<html>
<head><title>로그인</title></head>
 <% //browser 판별을 위한 부분
 	//헤더파일을 읽어와서 Firefox인지 Chrome인지 판별 	
	String browser = "";
	String userAgent = request.getHeader("User-Agent");
	if (userAgent.indexOf("Firefox") > 0) {
 		browser = "Firefox";
		} else if (userAgent.indexOf("Chrome") > 0) {
  		browser = "Chrome";
 		}
	out.print(browser);
    //	
    // cookie로 접근횟수를 저장 출력
   boolean ct_chrome=false;		//cookie생성여부판별
	boolean ct_fire=false;		//cookie생성여부판별  
   boolean isIDShow = false;   // ID 저장내용
   String id = null;
   Cookie[] cookies = request.getCookies();  // 요청전송된 모든 쿠키 얻어오기 
   if (cookies != null && cookies.length > 0) {
      for (int i = 0 ; i < cookies.length ; i++) {
         if (cookies[i].getName().equals("id")) {  //id 쿠키가 존재하는 경우
            isIDShow = true;
            id = cookies[i].getValue();			  //쿠키에 저장된 아이디를 출력해줌
         }
         if(browser.equals("Chrome")){ 			  //브라우저가 크롬인 경우
         	if (cookies[i].getName().equals("count_chrome")){ //쿠키가 존재하는 경우
        		ct_chrome=true;
         	   //string값을 int형으로 변환하여 받음
        	 	int temp = Integer.parseInt(cookies[i].getValue());
        	 	temp = temp+1;
        	 	out.print("접근 횟수   " + temp);
        	 	//같은 이름의 쿠키 카운터 증가한 값을 string으로 변경하여 덮어 씌움
        	 	Cookie cook = new Cookie("count_chrome", Integer.toString(temp));  
        	 	response.addCookie(cook);	   
         	}
			if(!ct_chrome){ //쿠키가 존재하지 않는 경우 -> 생성
				out.print("접근 횟수   1");
       		Cookie cookie = new Cookie("count_chrome", "1");  // date 쿠키 생성
       		response.addCookie(cookie);
       		}
         }
        if(browser.equals("Firefox")){ //브라우저가 파이어폭스인경우
      		if (cookies[i].getName().equals("count_fire")){
     	 	ct_fire=true;
     	 	int temp = Integer.parseInt(cookies[i].getValue());
     	 	temp = temp+1;
     	 	out.print("접근 횟수   " + temp);
     	// 같은 이름의 쿠키 카운터 증가한 값으로 덮어 씌움
     	 	Cookie cook = new Cookie("count_fire", Integer.toString(temp));  
     	 	response.addCookie(cook);	   
      		}
      		if(!ct_fire){ //쿠키가 존재하지 않는 경우
      			out.print("접근 횟수   1");
  				Cookie cookie = new Cookie("count_fire", "1");  // count 쿠키 생성
  				response.addCookie(cookie);
  			}
         }
   	  }
   }
%>
<body>
<br/>
관리자 (Master)로 로그인하세요.<br/>
<form action="loginProcess2.jsp" method="post">
<%
   if (isIDShow) {
%>
ID : <input type="text" name="id" value="<%= id %>">
<input type="checkbox" name="idstore" value="store" checked>아이디 기억하기
</input><br/>
<%
   } else {
%>
ID : <input type="text" name="id">
<input type="checkbox" name="idstore" value="store">아이디 기억하기</input><br/>
<%
   }
%>
Password : <input type="password" name="pw"><br/>
<input type="submit" value="전송">
</body>
</html>
