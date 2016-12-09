package com.cs336.pkg;

public class Laptop {

	int lpid;
	int batteryl;
	String screenres;
	String gpu;
	int weight;
	int backkeys;
	int touchscreen;
	int convertible;
	int opticald;
	
	public Laptop(int lpid,int batteryl,String screenres,String gpu,int weight,int backkeys,int touchscreen,int convertible,int opticald){
		this.lpid = lpid;
		this.batteryl = batteryl;
		this.screenres = screenres;
		this.gpu = gpu;
		this.weight = weight;
		this.backkeys = backkeys;
		this.touchscreen = touchscreen;
		this.convertible = convertible;
		this.opticald = opticald;
	}
	
	public Laptop(){}
	
	public int getlpid(){
		return lpid;
	}
	
	public String getSres(){
		return screenres;
	}
	
	public String getgpu(){
		return gpu;
	}
	
	public int getw(){
		return weight;
	}
	
	public int getbkeys(){
		return backkeys;
	}
	
	public int getts(){
		return touchscreen;
	}
	
	public int getconvert(){
		return convertible;
	}
	
	public int getOpt(){
		return opticald;
	}
		
}
