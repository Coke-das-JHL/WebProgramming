<!-- JSP cookie VS JavaScript cookie -->

<!-- JSP cookie -->
<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.Date" %>
<% 
   //jsp 쿠키: 응답시간을 지속적으로 갱신하며 쿠키로 전송, cookie name은 date이다.
   out.print("<H2>JSP</H2>");
   Cookie[] cookies = request.getCookies();				//request.getCookies() 모든 쿠키 얻어옴
   if (cookies != null && cookies.length > 0) {
   	for (int i = 0 ; i < cookies.length-1 ; i++) {    		//모든 쿠키값 출력
    	  	  out.print((i+1)+". ");
    		  out.print(cookies[i].getName()+"  ");
    		  out.print(cookies[i].getValue()+"<br>"); 
		  }
   	Cookie cookie = new Cookie("date", new Date().toString());	//date 객체 갱신함, 쿠키 객체 생성: name-value 모두 string
   	response.addCookie(cookie);
   }else{								//쿠키 존재하지 않는 경우
	out.print(" 쿠키가 없습니다. <br> ");
   	Cookie cookie = new Cookie("date", new Date().toString());  
   	response.addCookie(cookie);
   }
%>
<html>
<head>
<meta charset="UTF-8">
<title>cookieTest</title>
<SCRIPT LANGUAGE="JavaScript">
<!--  

// JavaScript Cookie 

// 쿠키 삭제 방법: document.cookie = "cookieEX1=valueEx1; path=/; expires=" + new Date()  // 생성과 동시에 만료된다
// document.cookie = "cookieEx2=valueEx2; path=/; expires="~~"; domain=.tistory.com" 꼴로 저장... 알아서 쿠키 추가됨
// path -> "/"webapps 전체에서 사용가능하게 해줌

function getCookie(cookie_name) {  //쿠키를 얻기위한 메소드, 인수로 쿠키 이름
	  var x, y;
	  var val = document.cookie.split(';');
	  for (var i = 0; i < val.length; i++) {
	    x = val[i].substr(0, val[i].indexOf('='));
	    y = val[i].substr(val[i].indexOf('=') + 1);
	    x = x.replace(/^\s+|\s+$/g, ''); // 앞과 뒤의 공백 제거하기
	    if (x == cookie_name) {
	      alert(y);
	      return unescape(y); // unescape로 디코딩 후 값 리턴
	    }
	  }
	}
function setCookie(cookie_name, value, days) { //쿠키를 저장하기위한 메소드, 인수로 쿠키 이름, 값, 유효기간
	  var exdate = new Date();
	  exdate.setDate(exdate.getDate() + days);  // 설정 일수만큼 현재시간에 만료값으로 지정
	  var cookie_value = escape(value) + ((days == null) ? '' : '; expires=' + exdate.toUTCString());
	  document.cookie = cookie_name + '=' + cookie_value;
	  alert(document.cookie);
	}
//-->
</SCRIPT> 
</head>
<body> 
<br><br>
<H2>JavaScript</H2> 
<SCRIPT LANGUAGE="JavaScript">
document.write("1. "+getCookie("jaehyeon")+"<BR>");  	//JSP로 javaScript로 저장한 쿠키 이름으로 쿠키값을 얻기
document.write("2. "+getCookie("date")+"<BR>");		//jsp로 JSP로 저장한 쿠키 이름으로 쿠키값 얻기
</SCRIPT>
<!--  JavaScript 통한 쿠키값 set/get 위한 버튼  -->
<INPUT TYPE="submit" VALUE="get" onClick="getCookie('jaehyeon1');">				
<INPUT TYPE="submit" VALUE="set1" onClick="setCookie('jaehyeon1','HI1',1);">
<INPUT TYPE="submit" VALUE="set2" onClick="setCookie('jaehyeon2','HI2',1);">
</body>
</html>
