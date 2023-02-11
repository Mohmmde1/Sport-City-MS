package com.models;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="users")
public class User {
    @Id
    @Column(name="id")
    int id;

    @Column(name="username")
    String username;

    @Column(name="password")
    String password;

    @Column(name="fname")
    String fname;

    @Column(name="lname")
    String lname;

    @Column(name="phone_number")
    String phoneNumber;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public String getPhoneNumber() {
        return phoneNumber;
    }

    public void setPhoneNumber(String phoneNumber) {
        this.phoneNumber = phoneNumber;
    }

    public String toString() {
        return "User [id=" + this.id + ", username=" + this.username + ", password=" + this.password + ", fname=" + this.fname + ", lname=" + this.lname + ", phoneNumber=" + this.phoneNumber + "]";
    }
}
