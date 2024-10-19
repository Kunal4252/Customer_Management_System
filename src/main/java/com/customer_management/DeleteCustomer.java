package com.customer_management;

public class DeleteCustomer {
	private String customerID;

	// Default constructor
	public DeleteCustomer() {
	}

	// Getter and Setter for CustomerID
	public String getCustomerID() {
		return customerID;
	}

	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}

	@Override
	public String toString() {
		return "DeleteCustomer [customerID=" + customerID + "]";
	}
}
