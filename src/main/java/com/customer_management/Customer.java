package com.customer_management;

public class Customer {
	private String customerID;
	private String customerName;
	private double totalLifetimeValue;
	private double averageOrderValue;
	private String customerSegmentCategory;

	// Getters and setters for the fields
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
		return "Customer [customerID=" + customerID + ", customerName=" + customerName + ", totalLifetimeValue="
				+ totalLifetimeValue + ", averageOrderValue=" + averageOrderValue + ", customerSegmentCategory="
				+ customerSegmentCategory + "]";
	}
}
