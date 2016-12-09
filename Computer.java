package com.cs336.pkg;

public class Computer {
	private String Itemname;
	private int Product_id;
	private String Manufacturer;
	private String Iteminfo;
	private String Processor;
	private int Ram;
	private int Storagespace;
	private String Storagetype;
	private String Os;
	
	
	public Computer(String Itemname, int Product_id,String Manufacturer, String Iteminfo, String Processor, int Ram, int Storagespace, String Storagetype, String Os){
		//super(Product_id,Itemname,Iteminfo);
		this.Itemname = Itemname;
		this.Product_id = Product_id;
		this.Manufacturer = Manufacturer;
		this.Iteminfo = Iteminfo;
		this.Processor = Processor;
        this.Ram = Ram;
        this.Storagespace = Storagespace;
        this.Storagetype = Storagetype;
        this.Os = Os;
		
	}
	
	
	
	public String getItemname(){
		return Itemname;
	}
	
	public int getProductid() {
		return Product_id;
	}
	
	public String getManu(){
		return Manufacturer;
	}
	
	public String getIteminfo(){
		return Iteminfo;
	}
	
	public String getProcessor(){
		return Processor;
	}
	
	public int getRam(){
		return Ram;
	}
	
	public int getStoragespace(){
		return Storagespace;
	}
	
	public String getStoragetype(){
		return Storagetype;
	}
	
	public String getOs(){
		return Os;
	}

}
