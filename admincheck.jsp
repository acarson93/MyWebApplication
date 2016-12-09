<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ApplicationDAO dao= new ApplicationDAO();
	Admin ad = dao.getAdmin();
	String adminid = request.getParameter("adminid");
	String password = request.getParameter("password");
	boolean flag1 = false;
	
	if(!adminid.equals("") && !password.equals("")){
		if(adminid.length() <= 20 && password.length()<= 20){
			if(adminid.equals("sys_admin") && password.equals("ADMN")){
				flag1 = true;
			}
			
			if(flag1 == true){
				session.setAttribute("adminid", adminid);
				response.sendRedirect("admin.jsp");
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