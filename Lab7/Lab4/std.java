package jaeHyeon.bean;

import java.io.Serializable;

public class std implements Serializable
{
	private String ID;
	private String name;
	private int age;
	private String major;

	public String getID(){
		return ID;
	} 
	public String getName(){
		return name;
	} 
	public int getAge(){
		return age;
	} 
	public String getMajor(){
		return major;
	} 
	public void setID(String ID){
		this.ID=ID;
	}
	public void setName(String ID){
		this.name=ID;
	}
	public void setAge(int age){
		this.age=age;
	}
	public void setMajor(String major){
		this.major=major;
	}
}
