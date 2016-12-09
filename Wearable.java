package com.cs336.pkg;

public class Wearable {

		int wpid;
		int batterylife;
		int heartsensor;
		
		public Wearable(int wpid, int batterylife, int heartsensor){
			this.wpid = wpid;
			this.batterylife = batterylife;
			this.heartsensor = heartsensor;
		}
		
		public Wearable(){}
		
		public int getWpid(){
			return wpid;
			
		}
		
		public int getBlife(){
			return batterylife;
		}
		
		public int getHS(){
			return heartsensor;
		}
}
