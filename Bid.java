package com.cs336.pkg;

public class Bid {

	private String Bidder;
	private int AuctionID;
	private String Biddate;
	private float Amount;
	private float Bidlimit;
	private int Auto_bid;
	private int Won_auction;
	
	public Bid(String Bidder, int AuctionID, String Biddate, float Amount, float Bidlimit,int Auto_bid, int Won_auction){
		this.Bidder = Bidder;
		this.AuctionID = AuctionID;
		this.Biddate = Biddate;
		this.Amount = Amount;
		this.Bidlimit= Bidlimit;
		this.Auto_bid = Auto_bid;
		this.Won_auction = Won_auction;
		
	}
	
	public Bid(){}
	
	public String getbidder(){
		return Bidder;
	}
	
	public int getauctid(){
		return AuctionID;
	}
	
	public String getbiddate(){
		return Biddate;
	}
	
	public float getamount(){
		return Amount;
	}
	
	public float getbidlimit(){
		return Bidlimit;
	}
	
	public int getautobid(){
		return Auto_bid;
	}
	
	public int getwonauction(){
		return Won_auction;
	}
	




}
