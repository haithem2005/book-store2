package com.bookshop.domain;

public class AdminLogin {

	private int adminID;
	private String adminUsername;
	private String adminPassword;

	public AdminLogin(String adminUsername, String adminPassword) {
		this.adminUsername = adminUsername;
		this.adminPassword = adminPassword;
	}

	public AdminLogin() {

	}

	public int getAdminID() {
		return adminID;
	}

	public void setAdminID(int adminID) {
		this.adminID = adminID;
	}

	public String getAdminUsername() {
		return adminUsername;
	}

	public void setAdminUsername(String adminUsername) {
		this.adminUsername = adminUsername;
	}

	public String getAdminPassword() {
		return adminPassword;
	}

	public void setAdminPassword(String adminPassword) {
		this.adminPassword = adminPassword;
	}



}
