<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="UTF-8" import="com.cs336.pkg.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%	ApplicationDAO dao = new ApplicationDAO(); 
	LinkedList<CustRep> listofEndUser= dao.getAllCrep();
	String cname = request.getParameter("cusername");
	String password = request.getParameter("crpw");
	
	dao.insertCR(cname, password);
		%>

</body>
</html>