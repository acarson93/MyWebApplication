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

	ApplicationDAO dao = new ApplicationDAO();
	//int proid = Integer.parseInt(request.getParameter("pid");
	
	LinkedList<Bid> listOfBid= dao.getAllBid();
	LinkedList<Auction> listOfAuction= dao.getAllAuction();
	String convertproid = (String)session.getAttribute("pproid");
	String convertbid = request.getParameter("bidoffer");
	float offeronbid;
	int proid;
	if(convertbid != null && !convertbid.isEmpty() && convertproid != null && !convertproid.isEmpty()){
		proid= Integer.valueOf(convertproid);
		offeronbid= Float.valueOf(convertbid);
		for(int i=0; i < listOfAuction.size(); i++){ 
 	 	if(proid == (listOfAuction.get(i).getProdid())){ 
		 	listOfAuction.get(i).getAid(); 
	        for(int j=0; j < listOfBid.size(); j++){  
		 	 	if((listOfAuction.get(i).getAid())== (listOfBid.get(j).getauctid())){  
				  	if(offeronbid > listOfBid.get(j).getamount()){ %>
				  		<h1>Current max bid: <%= offeronbid%></h1>
				  		<% listOfBid.add(new Bid("a",123,"b",offeronbid,100000,5,1) %>
		 	     	    
		 	     	<% } 
		 	       else{ %>
				   		<h1>Current max bid: <%= listOfBid.get(j).getamount()%></h1>
				  		
				  
				  <% } %>

	       
		 	      
<% 			 	} 
	 	 
		 }
 	 }
%>

  
<%} }%>


	





</body>
</html>