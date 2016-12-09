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
    LinkedList<Desktop> listofDesktop= dao.getAllDesktop();
    int dpid= (Integer)session.getAttribute("Productid");
    String gpu = request.getParameter("gpu");
	String formfactor = request.getParameter("formfactor");
	int opticaldrive = Integer.parseInt(request.getParameter("opticaldrive"));

	if(!gpu.equals("") && !formfactor.equals("") && (opticaldrive != 1 || opticaldrive != 0)){
		if(gpu.length()<= 20 && formfactor.length()<= 4 && opticaldrive <=1 && opticaldrive >= 0){
			dao.insertDesktop(dpid, gpu, formfactor, opticaldrive);
			response.sendRedirect("startauction.jsp");
		}
	
	}
	else{
		response.sendRedirect("error.jsp");
	}

%>

</body>
</html>