<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.io.*" %> 
<%@ page import="jaeHyeon.bean.std" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	int count=0;
	String realPath=application.getRealPath("/Part4/student.ser");
   	FileInputStream fis = new FileInputStream(realPath);
    ObjectInputStream ois = new ObjectInputStream(fis);
   	Object o = ois.readObject();
   	int num= (Integer)o;
   	count=num;
   	std students[] = new jaeHyeon.bean.std[num];
   	
   	for(int i=0;i<num;i++)
   	{
   		o = ois.readObject();
   		jaeHyeon.bean.std p = (jaeHyeon.bean.std) o;
   		students[i]=p;
   		out.print(p.toString()+"<BR>");
   	}
   	ois.close();
   	
   	FileOutputStream fos = new FileOutputStream(realPath);
   	ObjectOutputStream oos = new ObjectOutputStream(fos);
   	oos.writeObject(num);
   	for(int i=0;i<num;i++)
   	{
   		oos.writeObject(students[i]);
   	}
   	oos.close();
%>
</body>
</html>
