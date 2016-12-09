<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Enter Customer Rep Username and Password</h1>

<form action="crlogcheck.jsp" method="post">
	<table>
		<tr>
				<td>
					CustomerRep User ID: 
				</td>
				<td>	
					<input name="userid" type="text" />
				</td>
			</tr>
			<tr>
				<td>
					Password: 
				</td>
				<td>	
					<input name="password" type="text" />
				</td>
			</tr>
		</table>
		<input type="submit" value="Log in">
		</form>

</body>
</html>