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
	LinkedList<Laptop> listofLaptop= dao.getAllLaptop();
	int lpid= (Integer)session.getAttribute("Productid");
	int blife = Integer.parseInt(request.getParameter("blife"));
	String sresolution = request.getParameter("sresolution");
	String gpu = request.getParameter("gpu");
	int weight= Integer.parseInt(request.getParameter("weight"));
	int backlit = Integer.parseInt(request.getParameter("backlit"));
	int touch = Integer.parseInt(request.getParameter("touch"));
	int convertible = Integer.parseInt(request.getParameter("convertible"));
	int opticaldrive = Integer.parseInt(request.getParameter("opticaldrive"));

	if(blife != 0  && !sresolution.equals("") && !gpu.equals("") && weight != 0 && (backlit != 1 || backlit != 0)&& (touch != 1 || touch != 0) && (convertible != 1 || convertible != 0) && (opticaldrive != 1 || opticaldrive != 0)){
		if(blife<= 1111111111 && sresolution.length()<= 10 && gpu.length() <=20 && weight <= 1111111111  && backlit <= 1 && backlit >= 0 && touch <= 1 && touch >= 0 && convertible <= 1 && convertible >= 0 && opticaldrive <= 1 && opticaldrive >= 0){
			dao.insertLaptop(lpid, blife, sresolution, gpu, weight, backlit, touch, convertible, opticaldrive);
			response.sendRedirect("startauction.jsp");
		}

	}
	else{
		response.sendRedirect("error.jsp");
	}




%>
</body>
</html>