package com.cs336.pkg;

public class Desktop {
	private int Dpid;
	private String Gpu;
	private String Formfactor;
	private int Opticaldrive;
	
	public Desktop(int Dpid, String Gpu, String Formfactor, int Opticaldrive){
		this.Dpid = Dpid;
		this.Gpu = Gpu;
		this.Formfactor = Formfactor;
		this.Opticaldrive = Opticaldrive;
       
		
	}
	
	public Desktop(){}
	
	public int getDpid(){
		return Dpid;
	}
	
	public String getGpu(){
		return Gpu;
	}
	
	public String getFormfactor(){
		return Formfactor;
	}
	
	public int getOpticaldrive(){
		return Opticaldrive;
	}
	


}
