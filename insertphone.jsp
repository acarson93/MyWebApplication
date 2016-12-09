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
	LinkedList<Phone> listofPhone= dao.getAllPhone();
	int ppid= (Integer)session.getAttribute("Productid");
	String carrier = request.getParameter("carrier");
	int blife = Integer.parseInt(request.getParameter("batlife"));
	String dtype = request.getParameter("dtype");
	
	int cameramp = Integer.parseInt(request.getParameter("cameramp"));
	String resistance = request.getParameter("resistance");

	if(!carrier.equals("") && blife!=0 && !dtype.equals("") && cameramp!=0 && !resistance.equals("")){
		{
			dao.insertPhone(ppid, carrier, blife, dtype, cameramp, resistance);
			response.sendRedirect("startauction.jsp");
		}

	}
	else{
		response.sendRedirect("error.jsp");
	}




%>
</body>
</html>