<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% ApplicationDAO dao= new ApplicationDAO();
	LinkedList<CustRep> listofEndUser= dao.getAllCrep();
	String userid = request.getParameter("userid");
	String password = request.getParameter("password"); 
	boolean flag = false;
	
	for(int i=0;i<listofEndUser.size();i++){
		if(userid.equals(listofEndUser.get(i).getCname()) && password.equals(listofEndUser.get(i).getPword())){
			flag = true;
			break;
		}
	}
	
	if(flag==true){
		session.setAttribute("Userid", userid);
		response.sendRedirect("customerrep.jsp");
	}
	else{
		response.sendRedirect("incorrect.jsp");
	}
	
	%>

</body>
</html>