<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1> Create Customer Representative Account</h1>
<hr/>
<form action = "insertcr.jsp" method = "post">
<table>
	<tr>
				<td>
					Customer Rep Username (max 20 characters):
				</td>
				<td>
					<input type="text" name="cusername" />
				</td>
			</tr>
			
			<tr>
				<td>
					Password (max 4 characters):
				</td>
				<td>
					<input type="text" name="crpw" />
				</td>
			</tr>
	</table>
	<input type = "submit" value = "Create" />
	</form>
	


</body>
</html>