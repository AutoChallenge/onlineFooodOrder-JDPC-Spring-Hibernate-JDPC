package com.Spring.ordertbl;
import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class ordertbl {
	
	private int custid;
	
	@Id
	private int ordid;
	private double tot_bill_cost;
	public int getCustid() {
		return custid;
	}
	public void setCustid(int custid) {
		this.custid = custid;
	}
	public int getOrdid() {
		return ordid;
	}
	public void setOrdid(int ordid) {
		this.ordid = ordid;
	}
	public double getTot_bill_cost() {
		return tot_bill_cost;
	}
	public void setTot_bill_cost(double tot_bill_cost) {
		this.tot_bill_cost = tot_bill_cost;
	}
	
	

}
