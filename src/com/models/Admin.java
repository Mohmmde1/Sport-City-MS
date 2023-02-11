package com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.persistence.FetchType;
import javax.persistence.JoinColumn;
import javax.persistence.OneToOne;

@Entity
@Table(name="admins")
public class Admin {
	@Id
	@Column(name="id")
	int id;
	
	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name="user_id")
	User user;
	
	public int getId() {
		return id;
	}
	
	public void setId(int id) {
		this.id = id;
	}
	
	public User getUser() {
		return user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public String toString() {
		return "Admin [id=" + this.id + ", user=" + this.user + "]";
	}
}
