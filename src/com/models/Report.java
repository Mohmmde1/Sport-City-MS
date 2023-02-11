package com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="Report")
public class Report {
	
	@Id
	@Column(name="id")
	int id;
	
	@Column(name="report")
	String report;
	
	@Column(name="name")
	String name;
	
	@Column(name="status")
	String status;
	
	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getReport() {
		return report;
	}

	public void setReport(String report) {
		this.report = report;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}
	
	public String toString() {
		return "Report [id=" + this.id + ", report=" + this.report + ", name=" + this.name + ", status=" + this.status + "]";
	}
}
