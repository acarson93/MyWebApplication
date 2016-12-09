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
	LinkedList<Tablet> listofTab= dao.getAllTablet();
	int ppid= (Integer)session.getAttribute("Productid");
	int blife = Integer.parseInt(request.getParameter("batlife"));
	int weight= Integer.parseInt(request.getParameter("weight"));
	int cameramp = Integer.parseInt(request.getParameter("cameramp"));
	int keyboard = Integer.parseInt(request.getParameter("keyboard"));
	String dtype = request.getParameter("dtype");

	if(blife!=0 && !dtype.equals("") && weight!=0 && cameramp!=0 && keyboard<=1 && keyboard>=0){
		{
			
			dao.insertTablet(ppid, blife, dtype, weight, cameramp, keyboard);
			response.sendRedirect("startauction.jsp");
		}

	}
	else{
		response.sendRedirect("error.jsp");
	}




%>
</body>
</html>