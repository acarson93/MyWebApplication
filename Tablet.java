package com.cs336.pkg;

public class Tablet {

	int tpid;
	int batterylife;
	String displaytype;
	int camera_MP;
	int weight;
	int keyboard;
	
	public Tablet(int tpid, int batterylife, String displaytype, int camera_MP, int weight, int keyboard){
		this.tpid = tpid;
		this.batterylife = batterylife;
		this.displaytype = displaytype;
		this.camera_MP = camera_MP;
		this.weight = weight;
		this.keyboard = keyboard;
	}
	
	public Tablet(){}
	
	public int gettpid(){
		return tpid;
	}
	
	public int getBlife(){
		return batterylife;
	}
	
	public String getDtype(){
		return displaytype;
	}
	
	public int getCMP(){
		return camera_MP;
	}
	
	public int getW(){
	return weight;
	}
	
	public int getKB(){
		return keyboard;
	}
}


