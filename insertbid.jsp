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
	LinkedList<Bid> listOfBid= dao.getAllBid();
	LinkedList<Auction> listOfAuction= dao.getAllAuction();
	String biddername= (String)session.getAttribute("Userid");
	int placeholderID = (Integer)session.getAttribute("Proid");
	String year1= request.getParameter("year");
	String month1= request.getParameter("month");
	String day1= request.getParameter("day");
	float amountbid= Float.valueOf(request.getParameter("bidnum"));
	String Biddate= year1+"/"+month1+"/"+day1;
	float bidlimit= 1000000000;
	int autobid= 0;
	int won_auction= 0;
	
	for(int i=0; i < listOfAuction.size(); i++){
		if(placeholderID == (listOfAuction.get(i).getProdid())){
			dao.insertBid(biddername, listOfAuction.get(i).getAid(), Biddate, amountbid, bidlimit, autobid, won_auction);
			response.sendRedirect("itemindex.jsp");
		}
		
	}
	
	
	

%>



</body>
</html>