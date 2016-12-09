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
    LinkedList<Computer> listofComputer= dao.getAllComputer();
    //LinkedList<Desktop> listofDtop= dao.getAllDesktop();
    //LinkedList<GameConsole> listofGC= dao.getAllGC();
    //LinkedList<Laptop> listofLT= dao.getAllLaptop();
    //LinkedList<Phone> listofPhone= dao.getAllPhone();
    //LinkedList<Tablet> listofTab= dao.getAllTablet();
    //LinkedList<Wearable> listofWear= dao.getAllWear();
    String category = request.getParameter("category");
	String itemname = request.getParameter("itemname");
	String manufacturer = request.getParameter("manufacturer");
	String iteminfo = request.getParameter("iteminfo");
	String processor = request.getParameter("processor");
	int ram = Integer.parseInt(request.getParameter("ram"));
	int sspace = Integer.parseInt(request.getParameter("sspace"));
	String stype = request.getParameter("stype");
	String os = request.getParameter("os");
	int productid= (int) java.lang.Math.ceil(java.lang.Math.random() * 1111111111);
	
	if(!category.equals("") && !itemname.equals("") && !manufacturer.equals("") && !iteminfo.equals("") && !processor.equals("") && ram != 0 && sspace != 0 && !stype.equals("") && !os.equals("")){
		if(category.length()<=11 && itemname.length()<=20 && manufacturer.length()<= 20 && iteminfo.length() <= 300 && processor.length() <= 20 && ram <= 1111111111 && sspace <= 1111111111 && stype.length() <= 10 && os.length() <= 10){
			boolean flag= false;
			for (int i=0; i<listofComputer.size(); i++){
				if(productid == (listofComputer.get(i).getProductid())){
					flag= true;
					break;	
				}
			}
			if (flag != true){
				dao.insertComputer(itemname, productid, manufacturer, iteminfo, processor, ram, sspace, stype, os);
				if(category.equals("Desktop")){
					session.setAttribute("Productid", productid);
					session.setAttribute("Iteminfo", iteminfo);
					response.sendRedirect("desktopreg.jsp");
				}
				if(category.equals("Laptop")){
					session.setAttribute("Productid", productid);
					session.setAttribute("Iteminfo", iteminfo);
					response.sendRedirect("laptopreg.jsp");
				}
				if(category.equals("Phone")){
					session.setAttribute("Productid", productid);
					session.setAttribute("Iteminfo", iteminfo);
					response.sendRedirect("phonereg.jsp");
				}
				if(category.equals("Tablet")){
					session.setAttribute("Productid", productid);
					session.setAttribute("Iteminfo", iteminfo);
					response.sendRedirect("tabletreg.jsp");
				}
				if(category.equals("Wearable")){
					session.setAttribute("Productid", productid);
					session.setAttribute("Iteminfo", iteminfo);
					response.sendRedirect("wearablereg.jsp");
				}
				if(category.equals("GameConsole")){
					session.setAttribute("Productid", productid);
					session.setAttribute("Iteminfo", iteminfo);
					response.sendRedirect("gamereg.jsp");
				}
				
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