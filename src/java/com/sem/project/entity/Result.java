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
public class Result {
    int resultId,numberOfVotes;
    String candidate,party;

    public Result() {
    }

    public Result(int resultId, int numberOfVotes, String candidate, String party) {
        this.resultId = resultId;
        this.numberOfVotes = numberOfVotes;
        this.candidate = candidate;
        this.party = party;
    }

    public int getResultId() {
        return resultId;
    }

    public void setResultId(int resultId) {
        this.resultId = resultId;
    }

    public int getNumberOfVotes() {
        return numberOfVotes;
    }

    public void setNumberOfVotes(int numberOfVotes) {
        this.numberOfVotes = numberOfVotes;
    }

    public String getCandidate() {
        return candidate;
    }

    public void setCandidate(String candidate) {
        this.candidate = candidate;
    }

    public String getParty() {
        return party;
    }

    public void setParty(String party) {
        this.party = party;
    }
    
    
}
