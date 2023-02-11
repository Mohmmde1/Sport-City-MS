package com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="equipments")
public class Equipment {
	@Id
	@Column(name="id")
	int id;
	
	@Column(name="name")
	String name;
	
	@Column(name="details")
	String details;
	
	@Column(name="provider_name")
	String providerName;
	
	@Column(name="provider_email")
	String providerEmail;
	
	@Column(name="facility_id")
	int facilityId;

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

	public int getFacilityId() {
		return facilityId;
	}

	public void setFacilityId(int facilityId) {
		this.facilityId = facilityId;
	}

	public String toString() {
		return "Equipment [id=" + this.id + ", name=" + this.name + ", details=" + this.details + ", providerName=" + this.providerName + ", providerEmail=" + this.providerEmail + ", facilityId=" + this.facilityId + "]";
	}
}
