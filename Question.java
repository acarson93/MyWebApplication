package com.cs336.pkg;

public class Question {

	int quest_id;
	String dateposted;
	String qtext;
	String asker;
	int qpid;
	
	public Question(int quest_id, String dateposted, String qtext, String asker, int qpid){
		this.quest_id = quest_id;
		this.dateposted = dateposted;
		this.qtext = qtext;
		this.asker = asker;
		this.qpid = qpid;
	}
	
	public String getQ(){
		return qtext;
	}
}
