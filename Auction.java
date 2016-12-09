package com.cs336.pkg;

public class Auction {

	private int Auct_id;
	private int Product_id;
	private String Seller;
	private String Item_info;
	private String Date;
	private String Time;
	private int Sold;
	private float Reserve;
	
	public Auction(int Auct_id, int Product_id, String Seller, String Item_info, String Date, String Time, int Sold, float Reserve){
		this.Auct_id = Auct_id;
		this.Product_id = Product_id;
		this.Seller = Seller;
		this.Item_info = Item_info;
		this.Date= Date;
		this.Time= Time;
		this.Sold= Sold;
		this.Reserve= Reserve;
       
		
	}
	
	public Auction(){}
	
	public int getAid(){
		return Auct_id;
	}
	
	public int getProdid(){
		return Product_id;
	}
	
	public String getSeller(){
		return Seller;
	}
	
	public String getIteminfo(){
		return Item_info;
	}
	
	public String getDate(){
		return Date;
	}
	
	public String getTime(){
		return Time;
	}
	
	public int getSold(){
		return Sold;
	}
	
	public float getReserve(){
		return Reserve;
	}
	
	


}
