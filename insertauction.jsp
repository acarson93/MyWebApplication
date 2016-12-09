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
	LinkedList<Auction> listOfAuction= dao.getAllAuction();
	int auctid= (int) java.lang.Math.ceil(java.lang.Math.random() * 1111111111);
	int pid= (Integer)session.getAttribute("Productid");
	String sellername= (String)session.getAttribute("Userid");
	String iteminfo= (String)session.getAttribute("Iteminfo");
	int sold= 0;
	float reserve= 0;
	String year= request.getParameter("year");
	String month = request.getParameter("month");
	String day = request.getParameter("day");
	String Closedate = year+"/"+month+"/"+day;
	String hour= request.getParameter("hour");
	String minute= request.getParameter("minute");
	String ampm= request.getParameter("ampm");
	
	String Closetime = hour+":"+minute+" "+ampm;
	
	if(!Closedate.equals("") && !Closetime.equals("")){
		if(Closedate.length() <= 30 && Closetime.length() <= 30){
			boolean flag= false;
			for (int i=0; i<listOfAuction.size(); i++){
				if(auctid == (listOfAuction.get(i).getAid())){
					flag= true;
					break;	
				}
			}
			
			if(flag != true){
				dao.insertAuction(auctid, pid, sellername, iteminfo, Closedate, Closetime, sold, reserve);
				response.sendRedirect("itemindex.jsp");	
				
			}
			else{
				response.sendRedirect("error.jsp");
			}
			
		}
		else{
			response.sendRedirect("error.jsp");
		}
		
		
	}
	else{
		response.sendRedirect("error.jsp");
	}




%>




</body>
</html>