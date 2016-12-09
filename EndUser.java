package com.cs336.pkg;

public class EndUser {

	private String Username;
	private String pword;
	private String email;
	private String address;
	private int buyer_rating;
	private int seller_rating;
	
	public EndUser(String Username, String pword, String email, String address, int buyer_rating, int seller_rating){
		this.Username = Username;
		this.pword = pword;
		this.email = email;
		this.address = address;
        this.buyer_rating = buyer_rating;
        this.seller_rating = seller_rating;
		
	}
	
	public EndUser(){}
	
	public String getUser(){
		return Username;
	}
	
	public String getPword(){
		return pword;
	}
	
	public String getEmail(){
		return email;
	}
	
	public String getAddress(){
		return address;
	}
	
	public int getBuyerRating(){
		return buyer_rating;
	}
	
	public int getSellerRating(){
		return seller_rating;
	}
}
