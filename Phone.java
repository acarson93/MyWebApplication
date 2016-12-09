package com.cs336.pkg;

public class Phone {

	int ppid;
	String carrier;
	int batterylife;
	String displaytype;
	int camera_MP;
	String resistance;
	
	public Phone(int ppid, String carrier, int batterylife, String displaytype, int camera_MP, String resistance){
		this.ppid = ppid;
		this.carrier = carrier;
		this.batterylife = batterylife;
		this.displaytype = displaytype;
		this.camera_MP = camera_MP;
		this.resistance = resistance;
	}
	
	public Phone(){}
	
	public int getppid(){
		return ppid;
	}
	
	public String getcarr(){
		return carrier;
	}
	
	public int getBlife(){
		return batterylife;
	}
	public String getDtype(){
		return displaytype;
	}
	public int getCameraMP(){
		return camera_MP;
	}
	
	public String getResist(){
		return resistance;
	}
	
}
