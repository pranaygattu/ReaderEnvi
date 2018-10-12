/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package bean;
public class User {
private int id;
public String faname,laname,mail,pass,dob,addr,fname,phn,course,branch,gen;
        /*name,password,email,sex,country;*/
public int getId() {
	return id;
}
public void setId(int id) {
	this.id = id;
}
/*
public String getName() {
	return name;
}
public void setName(String name) {
	this.name = name;
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
public String getSex() {
	return sex;
}
public void setSex(String sex) {
	this.sex = sex;
}
public String getCountry() {
	return country;
}
public void setCountry(String country) {
	this.country = country;
}

}*/
public String getfaname(){
    return faname;
}
public void setfaname(String faname){
    this.faname=faname;
}
public String getlaname(){
    return laname;
}
public void setlaname(String laname){
    this.laname=laname;
}
public String getmail(){
    return mail;
}
public void setmail(String mail){
    this.mail=mail;
}
public String getpass(){
    return pass;
}
public void setpass(String pass){
    this.pass=pass;
}
public String getdob(){
    return dob;
}
public void setdob(String dob){
    this.dob=dob;
}
public String getaddr(){
    return addr;
}
public void setaddr(String addr){
    this.addr=addr;
}
public String getfname(){
    return fname;
}
public void setfname(String fname){
    this.fname=fname;
}
public String getphn(){
    return phn;
}
public void setphn(String phn){
    this.phn=phn;
}
public String getcourse(){
    return course;
}
public void setcourse(String course){
    this.course=course;
}
public String getbranch(){
    return branch;
}
public void setbranch(String branch){
    this.branch=branch;
}
public String getgen(){
    return gen;
}
public void setgen(String gen){
    this.gen=gen;
}
}
