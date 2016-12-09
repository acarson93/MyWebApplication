package com.cs336.pkg;
import java.util.LinkedList;

public class Testing {
	
	public static void main (String []args){
		
		LinkedList <Object> test = new LinkedList<Object>();
		
		test.add(new Wearable(1,2,3));
		
		for(int i=0;i<test.size();i++){
			if(test.get(i) instanceof Wearable){
				Wearable p = (Wearable)test.get(i);
				System.out.println(p.wpid);
			}
		}
		
		
	}

}
