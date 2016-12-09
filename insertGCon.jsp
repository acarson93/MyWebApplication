<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"  import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	ApplicationDAO dao= new ApplicationDAO();
	LinkedList<GameConsole> listofGC= dao.getAllGC();
	int ppid= (Integer)session.getAttribute("Productid");
	int backcompat = Integer.parseInt(request.getParameter("backcompat"));
	int bluray = Integer.parseInt(request.getParameter("bray"));
	
	if(backcompat<=1 && backcompat>=0 && bluray<=1 && bluray>=0){
		{
			dao.insertGC(ppid, backcompat, bluray);
			response.sendRedirect("startauction.jsp");
		}

	}
	else{
		response.sendRedirect("error.jsp");
	}




%>
</body>
</html>