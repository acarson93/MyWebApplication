<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="com.cs336.pkg.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ApplicationDAO dao= new ApplicationDAO();
	LinkedList<EndUser> listofEndUser= dao.getAllEndUser();
	String userid = request.getParameter("userid");
	String password = request.getParameter("password");
	
	if(!userid.equals("") && !password.equals("")){
		if(userid.length() <= 20 && password.length()<= 20){
			boolean flag1= false;
			for(int i=0; i<listofEndUser.size(); i++){
				if(userid.equals(listofEndUser.get(i).getUser()) && password.equals(listofEndUser.get(i).getPword())){
					flag1= true;
					break;
				}
			}
			if(flag1 == true){
				session.setAttribute("Userid", userid);
				response.sendRedirect("welcome.jsp");
			}
			else{
				response.sendRedirect("incorrect.jsp");
			}
		}
		else{
			response.sendRedirect("incorrect.jsp");
		}
		
	}
	else{
		response.sendRedirect("incorrect.jsp");
	}



%>




</body>
</html>  