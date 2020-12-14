<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<%@ page import="java.io.*" %>
<html>
<head>
<meta charset="UTF-8">
<title>register</title>
</head>
<body>
<% 
boolean exist=false;
String SCORE = request.getParameter("score");
String id=request.getParameter("ID");
String Name=request.getParameter("name");
out.print("등록 완료<BR>");
%>
<jsp:useBean id="new_std" class="jaeHyeon.bean.std" />
<jsp:setProperty name="new_std" property="ID" value="<%= id %>"/>
<jsp:setProperty name="new_std" property="name" value="<%= Name %>" />
<jsp:setProperty name="new_std" property="score" value="<%= SCORE %>" />
<%  //student.ser의 제일 앞에 bject의 개수가 저장되고 그 뒤에 Object들이 저장됨
	int count=0;
	String realPath=application.getRealPath("/Part4/student.ser");
   	FileInputStream fis = new FileInputStream(realPath);
    ObjectInputStream ois = new ObjectInputStream(fis);
   	Object o = ois.readObject();
   	int num= (Integer)o;
   	count=num;
   	jaeHyeon.bean.std students[] = new jaeHyeon.bean.std[num+1];
   	for(int i=0;i<num;i++)
   	{
   	o = ois.readObject();
   	jaeHyeon.bean.std p = (jaeHyeon.bean.std) o;
   	if(p.getID().equals(id)) exist=true;		// 이미 존재하는지를 나타내는 플래그
   	students[i]=p;
   	}
   	ois.close();									//읽기 완료
   	
   	FileOutputStream fos = new FileOutputStream(realPath);
   	ObjectOutputStream oos = new ObjectOutputStream(fos);
   	if(!exist) num+=1; 				//존재하지 않는 입력이라면 숫자 증가
   	oos.writeObject(num);
   	for(int i=0;i<count;i++)
   	{  
   		if(exist && students[i].getID().equals(id)){		//flag가 true이면 그냥 갱신
   			int temp = Integer.parseInt(students[i].getScore());
   			int temp2 = Integer.parseInt(SCORE);
   			if( temp < temp2 ){ students[i].setScore(SCORE);
   			} }
   		oos.writeObject(students[i]);
   	}
   	if(!exist){ oos.writeObject(new_std); 				//flag가 flase이면 새로운 객체 저장
   				  }
   	oos.close();
%>
<a href="content.jsp">파일 확인</a>
</body>
</html>
