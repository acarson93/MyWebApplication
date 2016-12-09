package com.cs336.pkg;

import java.sql.Connection;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

public class ApplicationDAO {

	public Connection getConnection(){
		String connectionUrl = "jdbc:mysql://classvm54.cs.rutgers.edu:3306/han_db?autoReconnect=true";
		Connection connection = null;
		
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
		} catch (InstantiationException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (IllegalAccessException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		try {
			connection = DriverManager.getConnection(connectionUrl,"root", "StrGrtSG20");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return connection;
		
	}
	
	public void closeConnection(Connection connection){
		try {
			connection.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	
	public void insertEndUser(String username, String password, String email, String address) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into EndUser values (?,?,?,?,-1,-1);"); 
		preparedStatement.setString(1,username);
		preparedStatement.setString(2,password); 
		preparedStatement.setString(3,email);
		preparedStatement.setString(4,address);
		
		
		preparedStatement.executeUpdate();
		System.out.println("user added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	public LinkedList<EndUser> getAllEndUser() throws SQLException{
		
		LinkedList<EndUser> listOfEndUser = new LinkedList<EndUser>();
		
		String selectString = "select * from EndUser;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfEndUser.add(new EndUser(rs.getString("username"), rs.getString("password"), rs.getString("email"), rs.getString("address"), rs.getInt("buyer_rating"), rs.getInt("seller_rating")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfEndUser;
	}
	
	public void insertComputer(String Itemname, int Product_id, String Manufacturer, String Iteminfo, String Processor, int Ram, int Storagespace, String Storagetype, String Os) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Computer values (?,?,?,?,?,?,?,?,?);"); 
		preparedStatement.setString(1,Itemname);
		preparedStatement.setInt(2,Product_id);
		preparedStatement.setString(3,Manufacturer);
		preparedStatement.setString(4,Iteminfo);
		preparedStatement.setString(5,Processor);
		preparedStatement.setInt(6,Ram);
		preparedStatement.setInt(7,Storagespace);
		preparedStatement.setString(8,Storagetype);
		preparedStatement.setString(9,Os);
		
		
		preparedStatement.executeUpdate();
		System.out.println("computer added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	public LinkedList<Computer> getAllComputer() throws SQLException{
		
		LinkedList<Computer> listOfComputer = new LinkedList<Computer>();
		
		String selectString = "select * from Computer;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfComputer.add(new Computer(rs.getString("itemname"), rs.getInt("product_id"), rs.getString("manufacturer"), rs.getString("item_info"), rs.getString("processor"), rs.getInt("ram"), rs.getInt("storagespace"), rs.getString("storagetype"), rs.getString("os")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfComputer;
	}
	
	public void insertDesktop(int Dpid, String Gpu, String Formfactor, int Opticaldrive) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Desktop values (?,?,?,?);"); 
		preparedStatement.setInt(1,Dpid);
		preparedStatement.setString(2,Gpu); 
		preparedStatement.setString(3,Formfactor);
		preparedStatement.setInt(4,Opticaldrive);
		
		
		preparedStatement.executeUpdate();
		System.out.println("desktop added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	public void insertLaptop(int lpid, int batterylife, String screenres, String gpu, int weight, int backkeys, int touchscreen, int convertible, int opticald) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Laptop values (?,?,?,?,?,?,?,?,?);"); 
		preparedStatement.setInt(1,lpid);
		preparedStatement.setInt(2,batterylife); 
		preparedStatement.setString(3,screenres);
		preparedStatement.setString(4,gpu);
		preparedStatement.setInt(5,weight);
		preparedStatement.setInt(6,backkeys);
		preparedStatement.setInt(7,touchscreen);
		preparedStatement.setInt(8,convertible);
		preparedStatement.setInt(9,opticald);
		
		
		preparedStatement.executeUpdate();
		System.out.println("laptop added");

		preparedStatement.close();
		dbConnection.close();
	}

	public void insertPhone(int ppid, String carrier, int batterylife, String displaytype, int camera_MP, String resistance) throws SQLException{
	
	Connection dbConnection = getConnection();
			
	PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Phone values (?,?,?,?,?,?);"); 
	preparedStatement.setInt(1,ppid);
	preparedStatement.setString(2,carrier); 
	preparedStatement.setInt(3,batterylife); 
	preparedStatement.setString(4,displaytype);
	preparedStatement.setInt(5,camera_MP);
	preparedStatement.setString(6,resistance);
	
	
	preparedStatement.executeUpdate();
	System.out.println("phone added");

	preparedStatement.close();
	dbConnection.close();
}
	
	public void insertTablet(int tpid, int batterylife, String displaytype, int camera_MP, int weight, int keyboard) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Tablet values (?,?,?,?,?,?);"); 
		preparedStatement.setInt(1,tpid);
		preparedStatement.setInt(2,batterylife); 
		preparedStatement.setString(3,displaytype);
		preparedStatement.setInt(4,weight);
		preparedStatement.setInt(5,camera_MP);
		preparedStatement.setInt(6,keyboard);
		
		
		preparedStatement.executeUpdate();
		System.out.println("tablet added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	public void insertWear(int wpid, int batterylife, int heartsensor) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Wearable values (?,?,?);"); 
		preparedStatement.setInt(1,wpid);
		preparedStatement.setInt(2,batterylife); 
		preparedStatement.setInt(3,heartsensor);
		
		
		preparedStatement.executeUpdate();
		System.out.println("Wearable added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	public void insertGC(int gpid, int backcompat, int bluray) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into GameConsole values (?,?,?);"); 
		preparedStatement.setInt(1,gpid);
		preparedStatement.setInt(2,backcompat); 
		preparedStatement.setInt(3,bluray);
		
		
		preparedStatement.executeUpdate();
		System.out.println("GameConsole added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	public void insertAuction(int Auct_id, int Product_id, String Seller, String Item_info, String Date, String Time, int Sold, float Reserve) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Auction values (?,?,?,?,?,?,?,?);"); 
		preparedStatement.setInt(1,Auct_id);
		preparedStatement.setInt(2,Product_id); 
		preparedStatement.setString(3,Seller);
		preparedStatement.setString(4,Item_info);
		preparedStatement.setString(5,Date);
		preparedStatement.setString(6,Time);
		preparedStatement.setInt(7,Sold);
		preparedStatement.setFloat(8,Reserve);
		
		
		
		preparedStatement.executeUpdate();
		System.out.println("Auction added");

		preparedStatement.close();
		dbConnection.close();
	}
	
	public void insertBid(String bidder, int auctionid, String biddate, float amount, float bidlimit, int auto_bid, int won_auction) throws SQLException{
		
		Connection dbConnection = getConnection();
				
		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Bid values (?,?,?,?,?,?,?);"); 
		preparedStatement.setString(1,bidder);
		preparedStatement.setInt(2,auctionid); 
		preparedStatement.setString(3,biddate);
		preparedStatement.setFloat(4,amount);
		preparedStatement.setFloat(5,bidlimit);
		preparedStatement.setInt(6,auto_bid);
		preparedStatement.setInt(7,won_auction);
		
		
		
		
		preparedStatement.executeUpdate();
		System.out.println("Bid added");

		preparedStatement.close();
		dbConnection.close();
	}

	public LinkedList<Laptop> getAllLaptop() throws SQLException{
	
	LinkedList<Laptop> listOfLaptop = new LinkedList<Laptop>();
	
	String selectString = "select * from Laptop;";
	Connection dbConnection = getConnection();
	PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
	int resLength = 0;
	ResultSet rs = preparedStatement.executeQuery(); 
	
	while(rs.next( )) {
		resLength++;
		listOfLaptop.add(new Laptop(rs.getInt("lpid"), rs.getInt("batterylife"), rs.getString("screenresolution"), rs.getString("gpu"), rs.getInt("weight"), rs.getInt("backlit_keys"), rs.getInt("touchscreen"), rs.getInt("convertible"),rs.getInt("opticaldrive")));
	}
	System.out.println("Select statement executed, " + resLength + " rows retrieved");
	
	preparedStatement.close();
	dbConnection.close();
	
	return listOfLaptop;
}
	
	public LinkedList<Phone> getAllPhone() throws SQLException{
		
		LinkedList<Phone> listOfPhone = new LinkedList<Phone>();
		
		String selectString = "select * from Phone;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfPhone.add(new Phone(rs.getInt("ppid"), rs.getString("carrier"), rs.getInt("batterylife"), rs.getString("displaytype"), rs.getInt("camera_MP"), rs.getString("resistance")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfPhone;
	}
	
	public LinkedList<Tablet> getAllTablet() throws SQLException{
		
		LinkedList<Tablet> listOfTab = new LinkedList<Tablet>();
		
		String selectString = "select * from Tablet;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfTab.add(new Tablet(rs.getInt("tpid"), rs.getInt("batterylife"), rs.getString("displaytype"), rs.getInt("camera_MP"), rs.getInt("weight"), rs.getInt("keyboard")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfTab;
	}
	
	
	
	public LinkedList<Desktop> getAllDesktop() throws SQLException{
		
		LinkedList<Desktop> listOfDesktop = new LinkedList<Desktop>();
		
		String selectString = "select * from Desktop;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfDesktop.add(new Desktop(rs.getInt("dpid"), rs.getString("gpu"), rs.getString("formfactor"), rs.getInt("opticaldrive")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfDesktop;
	}
	
	public LinkedList<Wearable> getAllWear() throws SQLException{
		
		LinkedList<Wearable> listOfWear = new LinkedList<Wearable>();
		
		String selectString = "select * from Wearable;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfWear.add(new Wearable(rs.getInt("wpid"), rs.getInt("batterylife"), rs.getInt("heartsensor")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfWear;
	}
	
	public LinkedList<GameConsole> getAllGC() throws SQLException{
		
		LinkedList<GameConsole> listOfGC = new LinkedList<GameConsole>();
		
		String selectString = "select * from GameConsole;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfGC.add(new GameConsole(rs.getInt("gpid"), rs.getInt("backwards_compatible"), rs.getInt("bluray")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfGC;
	}
	
	public LinkedList<Auction> getAllAuction() throws SQLException{
		
		LinkedList<Auction> listOfAuction = new LinkedList<Auction>();
		
		String selectString = "select * from Auction;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfAuction.add(new Auction(rs.getInt("auct_id"), rs.getInt("pid"), rs.getString("seller"), rs.getString("item_info"), rs.getString("opendate"), rs.getString("closedate"), rs.getInt("sold"), rs.getFloat("reserve")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfAuction;
	}
	
	public LinkedList<Bid> getAllBid() throws SQLException{
		
		LinkedList<Bid> listOfBid = new LinkedList<Bid>();
		
		String selectString = "select * from Bid;";
		Connection dbConnection = getConnection();
		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);
		int resLength = 0;
		ResultSet rs = preparedStatement.executeQuery(); 
		
		while(rs.next( )) {
			resLength++;
			listOfBid.add(new Bid(rs.getString("bidder"), rs.getInt("aid"), rs.getString("biddate"), rs.getFloat("amount"), rs.getFloat("bidlimit"), rs.getInt("auto_bid"), rs.getInt("won_auction")));
		}
		System.out.println("Select statement executed, " + resLength + " rows retrieved");
		
		preparedStatement.close();
		dbConnection.close();
		
		return listOfBid;
	}
	
public void insertQuestion(int quest_id, String dateposted, String qtext, String asker, int qpid) throws SQLException{

		

		Connection dbConnection = getConnection();

				

		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into Question values (?,?,?,?,?);"); 

		preparedStatement.setInt(1,quest_id);

		preparedStatement.setString(2,dateposted); 

		preparedStatement.setString(3,qtext);

		preparedStatement.setString(4,asker);

		preparedStatement.setInt(5, qpid);

		

		

		preparedStatement.executeUpdate();

		System.out.println("user added");




		preparedStatement.close();

		dbConnection.close();

	}








public void insertCR(String cname, String password) throws SQLException{

		

		Connection dbConnection = getConnection();

				

		PreparedStatement preparedStatement=dbConnection.prepareStatement("Insert into CustRep values (?,?);"); 

		preparedStatement.setString(1,cname);

		preparedStatement.setString(2,password); 

		//preparedStatement.setString(3,email);

		//preparedStatement.setString(4,address);

		

		

		preparedStatement.executeUpdate();

		System.out.println("user added");




		preparedStatement.close();

		dbConnection.close();

	}





public LinkedList<CustRep> getAllCrep() throws SQLException{

		

		LinkedList<CustRep> listOfCrep = new LinkedList<CustRep>();

		

		String selectString = "select * from CustRep;";

		Connection dbConnection = getConnection();

		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);

		int resLength = 0;

		ResultSet rs = preparedStatement.executeQuery(); 

		

		while(rs.next( )) {

			resLength++;

			listOfCrep.add(new CustRep(rs.getString("cusername"), rs.getString("privilege")));

		}

		System.out.println("Select statement executed, " + resLength + " rows retrieved");

		

		preparedStatement.close();

		dbConnection.close();

		

		return listOfCrep;

	}





public LinkedList<Question> getAllQ() throws SQLException{

		

		LinkedList<Question> listOfQ = new LinkedList<Question>();

		

		String selectString = "select * from Question;";

		Connection dbConnection = getConnection();

		PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);

		int resLength = 0;

		ResultSet rs = preparedStatement.executeQuery(); 

		

		while(rs.next( )) {

			resLength++;

			listOfQ.add(new Question(rs.getInt("quest_id"), rs.getString("dateposted"), rs.getString("qtext"), rs.getString("asker"), rs.getInt("qpid")));

		}

		System.out.println("Select statement executed, " + resLength + " rows retrieved");

		

		preparedStatement.close();

		dbConnection.close();

		

		return listOfQ;

	}

public Admin getAdmin() throws SQLException{

	

	Admin x = null;

	String selectString = "select * from Administrator;";

	Connection dbConnection = getConnection();

	PreparedStatement preparedStatement = dbConnection.prepareStatement(selectString);

	int resLength = 0;

	ResultSet rs = preparedStatement.executeQuery();

	

	while(rs.next()){

		x = new Admin(rs.getString("ausername"),rs.getString("privilege"));

	}

	

	//Admin x = new Admin(rs.getString("ausername"),rs.getString("pword"));

	

	System.out.println("Select statement executed, " + resLength + " rows retrieved");

	

	preparedStatement.close();

	dbConnection.close();

	

	return x;

	

	

}
	
	
	
	
	
	public static void main(String[] args) {
		ApplicationDAO dao = new ApplicationDAO();
		Connection connection = dao.getConnection();
		
		System.out.println(connection);
		
	    dao.closeConnection(connection);
	}
	
	

}
