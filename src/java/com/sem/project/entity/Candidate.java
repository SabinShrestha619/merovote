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
public class Candidate {
    int candidateId,age,citienshipNo;
    String firstName,lastName,gender,maritalStatus,address,party,post;

    public Candidate() {
    }

    public Candidate(int candidateId, int age, int citienshipNo, String firstName, String lastName, String gender, String maritalStatus, String address, String party, String post) {
        this.candidateId = candidateId;
        this.age = age;
        this.citienshipNo = citienshipNo;
        this.firstName = firstName;
        this.lastName = lastName;
        this.gender = gender;
        this.maritalStatus = maritalStatus;
        this.address = address;
        this.party = party;
        this.post = post;
    }

    public int getCandidateId() {
        return candidateId;
    }

    public int getAge() {
        return age;
    }

    public int getCitienshipNo() {
        return citienshipNo;
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

    public String getParty() {
        return party;
    }

    public String getPost() {
        return post;
    }

    public void setCandidateId(int candidateId) {
        this.candidateId = candidateId;
    }

    public void setAge(int age) {
        this.age = age;
    }

    public void setCitienshipNo(int citienshipNo) {
        this.citienshipNo = citienshipNo;
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

    public void setParty(String party) {
        this.party = party;
    }

    public void setPost(String post) {
        this.post = post;
    }
        
}
