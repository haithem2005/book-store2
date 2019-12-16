package com.bookshop.domain;

public class Register {

	private String password;
	private String firstName;
	private String lastName;
	private String country;
	private String city;
	private String street;
	private String postNr;
	private String email;

public Register (String password, String firstName, String lastName, String country, String city, String street, String postNr, String email) {
	this.setPassword(password);
	this.setFirstName(firstName);
	this.setLastName(lastName);
	this.setCountry(country);
	this.setCity(city);
	this.setStreet(street);
	this.setPostNr(postNr);
	this.setEmail(email);
}

public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getFirstName() {
	return firstName;
}

public void setFirstName(String firstName) {
	this.firstName = firstName;
}

public String getLastName() {
	return lastName;
}

public void setLastName(String lastName) {
	this.lastName = lastName;
}

public String getCountry() {
	return country;
}

public void setCountry(String country) {
	this.country = country;
}

public String getCity() {
	return city;
}

public void setCity(String city) {
	this.city = city;
}

public String getStreet() {
	return street;
}

public void setStreet(String street) {
	this.street = street;
}

public String getPostNr() {
	return postNr;
}

public void setPostNr(String postNr) {
	this.postNr = postNr;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}
}
