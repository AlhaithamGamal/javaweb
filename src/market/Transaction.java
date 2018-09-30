package market;

import java.util.Date;

public class Transaction {
private String address;
private String date;
private int requestid;
private double productprice;
public double getProductprice() {
	return productprice;
}
public void setProductprice(double productprice) {
	this.productprice = productprice;
}
public int getRequestid() {
	return requestid;
}
public void setRequestid(int requestid) {
	this.requestid = requestid;
}
private String productname;
private int quantitywanted;
private double totalprice;
private String username;
public String getAddress() {
	return address;
}
public void setAddress(String address) {
	this.address = address;
}
public String getDate() {
	return date;
}
public void setDate(String date) {
	this.date = date;
}
public String getProductname() {
	return productname;
}
public void setProductname(String productname) {
	this.productname = productname;
}
public int getQuantitywanted() {
	return quantitywanted;
}
public void setQuantitywanted(int quantitywanted) {
	this.quantitywanted = quantitywanted;
}
public double getTotalprice() {
	return totalprice;
}
public void setTotalprice(double totalprice) {
	this.totalprice = totalprice;
}
public String getUsername() {
	return username;
}
public void setUsername(String username) {
	this.username = username;
}

}
