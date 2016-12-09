package com.cs336.pkg;

public class Admin {

	String ausername;
	String pword;
	
	public Admin(String ausername, String pword){
		this.ausername = ausername;
		this.pword = pword;
	}
	
	public String getAname(){
		return ausername;
	}
	
	public String getPword(){
		return pword;
	}
}
