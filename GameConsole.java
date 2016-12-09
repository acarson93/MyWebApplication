package com.cs336.pkg;

public class GameConsole {
	
	int gpid;
	int backcompat;
	int bluray;
	
	public GameConsole(int gpid, int backcompat, int bluray){
		this.gpid = gpid;
		this.backcompat = backcompat;
		this.bluray = bluray;
	}
	
	public GameConsole(){}
	
	public int getgpid(){
		return gpid;
	}
	
	public int getbcompat(){
		return backcompat;
	}
	
	public int getbray(){
		return bluray;
	}

}
