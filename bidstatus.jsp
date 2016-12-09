<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*"  import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%int pproid = Integer.parseInt(request.getParameter("pid")); 
  session.setAttribute("ppproid", pproid);
%>
<hr>
    <form action="checkbid.jsp" method="post">
    <h1>Want to make a higher bid? Enter below:</h1>
    
    	<table>
    		<tr>
				<td>
					Your offer (max 11 chars):
					</td>
					<td>
					<input type="text" name="bidoffer" />
				</td>
			</tr>
    	
    	</table>
    <input type = "submit" value = "Enter your offer" />
    </form>


</body>
</html>