package com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.ForeignKey;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;

@Entity
@Table(name="booking")
public class Booking {
	
	@Id
	@Column(name="id")
	int id;
	
	@ManyToOne
	@JoinColumn(name="customer_id", foreignKey=@ForeignKey(name="fk_customer_id"))
	Customer customer;
	
	@ManyToOne
	@JoinColumn(name="facility_id", foreignKey=@ForeignKey(name="fk_facility_id"))
	Facility facility;
	
	@Column(name="start_date")
	String startDate;
	
	@Column(name="end_date")
	String endDate;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public Facility getFacility() {
		return facility;
	}

	public void setFacility(Facility facility) {
		this.facility = facility;
	}

	public String getStartDate() {
		return startDate;
	}

	public void setStartDate(String startDate) {
		this.startDate = startDate;
	}

	public String getEndDate() {
		return endDate;
	}

	public void setEndDate(String endDate) {
		this.endDate = endDate;
	}
}
