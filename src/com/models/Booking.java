package com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.ForeignKey;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.OneToOne;
import javax.persistence.JoinColumn;

@Entity
@Table(name="bookings")
public class Booking {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	int id;
	
	@OneToOne
	@JoinColumn(name="customer_id", foreignKey=@ForeignKey(name="fk_customer_id"))
	Customer customer;
	
	@OneToOne
	@JoinColumn(name="facility_id", foreignKey=@ForeignKey(name="fk_facility_id"))
	Facility facility;
	
	@OneToOne
	@JoinColumn(name="equipment_id", foreignKey=@ForeignKey(name="fk_equipment_id"))
	Equipment equipment;
	
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
	
	public Equipment getEquipment() {
		return equipment;
	}

	public void setEquipment(Equipment equipment) {
		this.equipment = equipment ;
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
	
	@Override
	public String toString() {
	return "Booking [id=" + id + ", customer=" + customer + ", facility=" + facility + ", equipment=" + equipment + ", startDate=" + startDate
	+ ", endDate=" + endDate + "]";
	}
}
