<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"  import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Additional Details for Game Console Needed</h1>

<hr>
	<form action="insertGCon.jsp" method = "post">
	<h1>Please enter the details of the new item</h1>
	
		<table>
			
			<tr>
				<td>
					Backwards Compatibility (1 or 0)):
					</td>
					<td>
					<input type="text" name="backcompat" />
				</td>
			</tr>
			<tr> 
				<td>
					Blu Ray (1 or 0):
					</td>
					<td>
					<input type="text" name="bray" />
				</td>
			</tr>
			
		
		</table>
		<input type = "submit" value = "Register Game Console" />
		</form>


</body>
</html>