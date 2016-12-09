<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"  import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<h1>List of questions asked by users</h1>
<body>
<% ApplicationDAO dao= new ApplicationDAO(); 
 String userid = (String)session.getAttribute("asker"); %>
<table>
			<% LinkedList<Question> listOfItem =dao.getAllQ();%>
			
			<% for (int i=0; i<listOfItem.size();i++){ %>
			<tr>
				<td><%= listOfItem.get(i).getQ()%></td>
				<td> <a href=<%="\"respond.jsp?Id=" + userid + "\""%>>  Respond </a> </td>
				</br>
				
				</tr>
				<%} %> 
</table>

</body>
</html>