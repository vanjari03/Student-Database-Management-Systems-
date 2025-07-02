package com.pojo;

public class Student 
{
//sid|name|username| password|email|mobno|year|division|marks|
 private int sid,mobno,division,marks;
 private String name,username,password,email,year;
public Student(int sid, int mobno, int division, int marks, String name, String username, String password, String email,
		String year) {
	super();
	this.sid = sid;
	this.mobno = mobno;
	this.division = division;
	this.marks = marks;
	this.name = name;
	this.username = username;
	this.password = password;
	this.email = email;
	this.year = year;
}
public Student() {
	super();
}
public int getSid() {
	return sid;
}
public void setSid(int sid) {
	this.sid = sid;
}
public int getMobno() {
	return mobno;
}
public void setMobno(int mobno) {
	this.mobno = mobno;
}
public int getDivision() {
	return division;
}
public void setDivision(int division) {
	this.division = division;
}
public int getMarks() {
	return marks;
}
public void setMarks(int marks) {
	this.marks = marks;
}
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getYear() {
	return year;
}
public void setYear(String year) {
	this.year = year;
}
@Override
public String toString() {
	return "Student [sid=" + sid + ", mobno=" + mobno + ", division=" + division + ", marks=" + marks + ", name=" + name
			+ ", username=" + username + ", password=" + password + ", email=" + email + ", year=" + year + "]";
}
 
 
}
