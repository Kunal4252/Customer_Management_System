package com.customer_management;

public class UpdateCustomer {
	private String customerID;
	private String customerName;
	private double totalLifetimeValue;
	private double averageOrderValue;
	private String customerSegmentCategory;

	// Default constructor
	public UpdateCustomer() {
	}

	// Getters and Setters
	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	public String getCustomerName() {
		return customerName;
	}

	public void setCustomerName(String customerName) {
		this.customerName = customerName;
	}

	public double getTotalLifetimeValue() {
		return totalLifetimeValue;
	}

	public void setTotalLifetimeValue(double totalLifetimeValue) {
		this.totalLifetimeValue = totalLifetimeValue;
	}

	public double getAverageOrderValue() {
		return averageOrderValue;
	}

	public void setAverageOrderValue(double averageOrderValue) {
		this.averageOrderValue = averageOrderValue;
	}

	public String getCustomerSegmentCategory() {
		return customerSegmentCategory;
	}

	public void setCustomerSegmentCategory(String customerSegmentCategory) {
		this.customerSegmentCategory = customerSegmentCategory;
	}

	@Override
	public String toString() {
		return "UpdateCustomer{" + "customerID='" + customerID + '\'' + ", customerName='" + customerName + '\''
				+ ", totalLifetimeValue=" + totalLifetimeValue + ", averageOrderValue=" + averageOrderValue
				+ ", customerSegmentCategory='" + customerSegmentCategory + '\'' + '}';
	}
}
