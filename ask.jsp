<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form action="insertq.jsp" method="post">
<% String s = request.getParameter("Id");
	session.setAttribute("asker",s);						%>
<table>
	<tr>
		<td>
			Ask question:
			</td>
				<td>	
					<input name="ask" type="text" />
				</td>
			</tr>


</table>
<input type="submit" value="Ask">
</form>

</body>
</html>