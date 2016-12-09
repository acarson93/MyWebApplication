<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.cs336.pkg.*" import ="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Auction Search</title>
	<script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" ></script>
	<script>
		$('#producttype').on('change',function(){
		    var ptype = $(this).val();
		    switch(ptype){
			    case 'Desktop':
			    	$("#d").show();
			    	$("#l").hide();
			    	$("#p").hide();
			    	$("#t").hide();
			    	$("#w").hide();
			    	$("#gc").hide();
			    	break;
			    case 'Laptop':
			    	$("#d").hide();
			    	$("#l").show();
			    	$("#p").hide();
			    	$("#t").hide();
			    	$("#w").hide();
			    	$("#gc").hide();
			    	break;
			    case 'Phone':
			    	$("#d").hide();
			    	$("#l").hide();
			    	$("#p").show();
			    	$("#t").hide();
			    	$("#w").hide();
			    	$("#gc").hide();
			    	break;
			    case 'Tablet':
			    	$("#d").hide();
			    	$("#l").hide();
			    	$("#p").hide();
			    	$("#t").show();
			    	$("#w").hide();
			    	$("#gc").hide();
			    	break;
			    case 'Wearable':
			    	$("#d").hide();
			    	$("#l").hide();
			    	$("#p").hide();
			    	$("#t").hide();
			    	$("#w").show();
			    	$("#gc").hide();
			    	break;
			    case 'GameConsole':
			    	$("#d").hide();
			    	$("#l").hide();
			    	$("#p").hide();
			    	$("#t").hide();
			    	$("#w").hide();
			    	$("#gc").show();
			    	break;
			    default:
			    	$("#d").hide();
			    	$("#l").hide();
			    	$("#p").hide();
			    	$("#t").hide();
			    	$("#w").hide();
			    	$("#gc").hide();
		    }
		});
	</script>
</head>
<body>
	<form action="AuctionSearchResult.jsp" method="post">
	<label for="producttype">Choose Product Type</label>
	<select name="producttype" id="producttype">
		<option value="All">All</option>
		<option value="Desktop">Desktop</option>
		<option value="Laptop">Laptop</option>
		<option value="Phone">Phone</option>
		<option value="Tablet">Tablet</option>
		<option value="Wearable">Wearable</option>
		<option value="GameConsole">Game Console</option>
	</select>
	<hr>
	
	<div id="common">
	<label for="itemname">Item Name</label>
	<input type="text" name="itemname" placeholder="Specify item name"/><br>
	<label for="productID">Product ID</label>
	<input type="text" name="productID" placeholder="Specify product id"/><br>
	<label for="manufacturer">Manufacturer</label>
	<input type="text" name="manufacturer" placeholder="Specify manufacturer"/><br>
	<label for="os">Operating System</label>
	<input type="text" name="os" placeholder="Specify operating system"/><br>
	</div>
	
	<div id="d" style="display:none;">
	<label for="gpu">Graphics Card</label>
	<input type="text" name="gpu" placeholder="Specify graphics card"/><br>
	<label for="formfactor">Form Factor</label>
	<input type="text" name="formfactor" placeholder="Specify case form factor"/><br>
	</div>
	
	<div id="l" style="display:none;">
	<label for="gpu">Graphics Card</label>
	<input type="text" name="gpu" placeholder="Specify graphics card"/><br>
	<label for="touchscreen">Has a Touch Screen</label>
	<input type="text" name="touchscreen" placeholder="Yes or no"/><br>
	</div>
	
	<div id="p" style="display:none;">
	<label for="carrier">Carrier</label>
	<input type="text" name="carrier" placeholder="Specify carrier"/><br>
	<label for="batterylife">Battery Life</label>
	<input type="text" name="batterylife" placeholder="Specify min. battery life"/><br>
	</div>
	
	<div id="t" style="display:none;">
	<label for="batterylife">Battery Life</label>
	<input type="text" name="batterylife" placeholder="Specify min. battery life"/>
	</div>
	
	<div id="w" style="display:none;">
	<label for="heartsensor">Heart Rate Sensor</label>
	<input type="text" name="heartsensor" placeholder="Yes or no"/>
	</div>
	
	<div id="gc" style="display:none;">
	<label for="bluray">Plays Blu-ray</label>
	<input type="text" name="bluray" placeholder="Yes or no"/>
	</div>
	
	<input type="submit" value="Search">
	</form>
	
	<a href="welcome.jsp"> Go back to home page</a>
</body>
</html>