/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.entity;

/**
 *
 * @author sapu
 */
public class Voter {
    int voterId,citizenshipNo,phoneNo;
    String firstName,lastName,gender,maritalStatus,address,email,uniqueId,password,photo,confirmPassword;

    public Voter() {
    }

    public Voter(int voterId, int citizenshipNo, int phoneNo, String firstName, String lastName, String gender, String maritalStatus, String address, String email, String uniqueId, String password, String photo, String confirmPassword) {
        this.voterId = voterId;
        this.citizenshipNo = citizenshipNo;
        this.phoneNo = phoneNo;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.maritalStatus = maritalStatus;
        this.address = address;
        this.email = email;
        this.uniqueId = uniqueId;
        this.password = password;
        this.photo = photo;
        this.confirmPassword = confirmPassword;
    }

    
   

    public int getVoterId() {
        return voterId;
    }

    public int getCitizenshipNo() {
        return citizenshipNo;
    }

    public String getUniqueId() {
        return uniqueId;
    }

    public String getFirstName() {
        return firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public String getGender() {
        return gender;
    }

    public String getMaritalStatus() {
        return maritalStatus;
    }

    public String getAddress() {
        return address;
    }

    public String getEmail() {
        return email;
    }

    public void setVoterId(int voterId) {
        this.voterId = voterId;
    }

    public void setCitizenshipNo(int citizenshipNo) {
        this.citizenshipNo = citizenshipNo;
    }

    public void setUniqueId(String uniqueId) {
        this.uniqueId = uniqueId;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public void setMaritalStatus(String maritalStatus) {
        this.maritalStatus = maritalStatus;
    }

    public void setAddress(String address) {
        this.address = address;
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

    public String getPhoto() {
        return photo;
    }

    public void setPhoto(String photo) {
        this.photo = photo;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }

    public int getPhoneNo() {
        return phoneNo;
    }

    public void setPhoneNo(int phoneNo) {
        this.phoneNo = phoneNo;
    }
    
    
    
    
}
