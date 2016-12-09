<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Additional Details for Desktop Needed</h1>

<hr>
	<form action="insertdesktop.jsp" method = "post">
	<h1>Please enter the details of the new item</h1>
	
		<table>
			<tr>
				<td>
					Gpu type (max 20 chars):
					</td>
					<td>
					<input type="text" name="gpu" />
				</td>
			</tr>
		
			<tr>
				<td>
					Formfactor (max 4 characters):
					</td>
					<td>
					<input type="text" name="formfactor" />
				</td>
			</tr>
			<tr>
				<td>
					OpticalDrive (1 for yes, 0 for no):
					</td>
					<td>
					<input type="text" name="opticaldrive" />
				</td>
			</tr>
			<tr>
		</table>
		<input type = "submit" value = "Register Desktop" />
		</form>

</body>
</html>