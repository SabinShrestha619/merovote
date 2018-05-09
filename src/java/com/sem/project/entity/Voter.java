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
    int voterId,citizenshipNo,uniqueId;
    String firstName,lastName,gender,maritalStatus,address,email;

    public Voter() {
    }

    public Voter(int voterId, int citizenshipNo, int uniqueId, String firstName, String lastName, String gender, String maritalStatus, String address, String email) {
        this.voterId = voterId;
        this.citizenshipNo = citizenshipNo;
        this.uniqueId = uniqueId;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.maritalStatus = maritalStatus;
        this.address = address;
        this.email = email;
    }

    public int getVoterId() {
        return voterId;
    }

    public int getCitizenshipNo() {
        return citizenshipNo;
    }

    public int getUniqueId() {
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

    public void setUniqueId(int uniqueId) {
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
    
    
    
    
}
