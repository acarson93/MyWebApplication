<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import ="java.util.*" import="java.sql.*"
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search Result</title>
</head>
<body>

<%	ApplicationDAO dao= new ApplicationDAO();
	Connection con = dao.getConnection();

	int argcount=0,rslen=0;
	
	String category = request.getParameter("producttype");
	String itemname= request.getParameter("itemname");
	String pid= request.getParameter("productID");
	String manufacturer= request.getParameter("manufacturer");
	String os= request.getParameter("os");
	
	String query=null;
	String query_where=null;
	PreparedStatement s;
	ResultSet rs;

	//grab all relevant parameters from search -> query with all non null values, changing data types as necessary -> make html table out of result
	if(category.equals("All")){
		if(!itemname.equals("")){
			argcount++;
			query_where="c.itemname="+itemname;
		}
		
		//doesn't account for not integer exceptions
		if(!pid.equals("")){
			argcount++;
			if(query_where==null) query_where="c.pid="+pid;
			else query_where.concat("and c.pid="+pid);
		}
		
		if(!manufacturer.equals("")){
			argcount++;
			if(query_where==null) query_where="c.manufacturer="+manufacturer;
			else query_where.concat("and c.manufacturer="+manufacturer);
		}
		
		if(!os.equals("")){
			argcount++;
			if(query_where==null) query_where="c.os="+os;
			else query_where.concat("and c.os="+os);
		}
		
		query="SELECT a.auct_id,a.closedate, c.itemname, a.seller,  FROM Auctions a, Computer c";
		if(query_where != null)query.concat("WHERE"+query_where+";");
		
	}
	
	else if(category.equals("Desktop")){
		
	}
	else if(category.equals("Laptop")){
		
	}
	else if(category.equals("Phone")){
		
	}
	else if(category.equals("Tablet")){
		
	}
	else if(category.equals("Wearable")){
		
	}
	else if(category.equals("GameConsole")){
		
	}
	

%>

<table border='1'>
	<tr>
		<th>Auction ID</th>
		<th>Close Date</th>
		<th>Item Name</th>
		<th>Seller</th>
	</tr>
	
	<tr>
		<% 	s= con.prepareStatement(query);
	 		rs= s.executeQuery();%>
		<%  while(rs.next()) { %>
			<% 	rslen++; %>
				<td><%rs.getString("auct_id");%></td>
				<td><%rs.getString("closedate");%></td>
				<td><%rs.getString("itemname");%></td>
				<td><%rs.getString("seller");%></td>
				<td>Bid on this auction</td>
		<%	}
		s.close();
		con.close();%>
	</tr>
</table><br>

<a href="AuctionSearch.jsp">Try another search</a>
</body>
</html>