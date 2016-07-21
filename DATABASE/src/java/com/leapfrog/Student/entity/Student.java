/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.leapfrog.Student.entity;

/**
 *
 * @author Prithivi Raj
 */
public class Student {
    public int id;
    public String fname,lname,phone,username,email,password,college;

    public Student() {
    }

    public Student(int id, String fname, String lname, String phone, String email,String username, String password, String college) {
        this.id = id;
        this.fname = fname;
        this.lname = lname;
        this.phone = phone;
        this.email = email;
        this.password = password;
        this.college = college;
        this.username = username;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    
    public String tooString() {
        return "Student{" + "id=" + id + ", fname=" + fname + ", lname=" + lname + ", phone=" + phone + ", username=" + username + ", email=" + email + ", password=" + password + ", college=" + college + '}';
    }

    public String getCollege() {
        return college;
    }

    public void setCollege(String college) {
        this.college = college;
    }


    public String getName() {
        return "Student's Name:" + fname + lname;
    }
   
}
