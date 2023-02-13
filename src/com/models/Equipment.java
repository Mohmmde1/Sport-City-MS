package com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name="equipments")
public class Equipment {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name="id")
	int id;
	
	public Equipment() {
		
	}
	
	public Equipment(String name, String details, String providerName, String providerEmail, Facility facility) {
		super();
		this.name = name;
		this.details = details;
		this.providerName = providerName;
		this.providerEmail = providerEmail;
		this.facility = facility;
		this.status = "Ordered from " + providerName;
	}

	@Column(name="name")
	String name;
	
	@Column(name="details")
	String details;
	
	@Column(name="provider_name")
	String providerName;
	
	@Column(name="provider_email")
	String providerEmail;
	
	@Column(name="equipment_status")
	String status;
	
	/*
	 * @Column(name="facility_id") int facilityId;
	 */
	
	@ManyToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="facility_id")
	Facility facility;
		
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDetails() {
		return details;
	}

	public void setDetails(String details) {
		this.details = details;
	}

	public String getProviderName() {
		return providerName;
	}

	public void setProviderName(String providerName) {
		this.providerName = providerName;
	}

	public String getProviderEmail() {
		return providerEmail;
	}

	public void setProviderEmail(String providerEmail) {
		this.providerEmail = providerEmail;
	}
	
	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	
	/*
	 * public int getFacilityId() { return facilityId; }
	 * 
	 * public void setFacilityId(int facilityId) { this.facilityId = facilityId; }
	 */

	public Facility getFacility() {
		return facility;
	}

	public void setFacility(Facility facility) {
		this.facility = facility;
	}

	public String toString() {
		return "Equipment [id=" + this.id + ", name=" + this.name + ", details=" + this.details + ", providerName=" + this.providerName + ", providerEmail=" + this.providerEmail + ", facilityId=" + facility.getId() + "]";
	}
}
