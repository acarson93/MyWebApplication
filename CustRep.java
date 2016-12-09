package com.cs336.pkg;

public class CustRep {

	String cname;
	String pword;
	
	public CustRep(String cname,String pword){
		this.cname = cname;
		this.pword = pword;
	}
	
	public String getCname(){
		return cname;
	}
	
	public String getPword(){
		return pword;
	}
}
