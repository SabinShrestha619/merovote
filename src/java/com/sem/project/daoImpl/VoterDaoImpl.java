/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.daoImpl;

import com.sem.project.dao.VoterDAO;
import com.sem.project.database.dbConnection;
import com.sem.project.entity.Voter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

/**
 *
 * @author sapu
 */
public class VoterDaoImpl implements VoterDAO {
    private String a="10";

    private dbConnection db = new dbConnection();

    @Override
    public List<Voter> getALL() throws SQLException, ClassNotFoundException {
        List<Voter> voterList = new ArrayList<>();
        String sql = "select * from register_voter";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Voter voter = new Voter();
            voter.setVoterId(rs.getInt("voterId"));
            voter.setCitizenshipNo(rs.getInt("citizenshipNo"));
            voter.setUniqueId(rs.getString("uniqueId"));
            voter.setFirstName(rs.getString("firstName"));
            voter.setLastName(rs.getString("lastName"));
            voter.setGender(rs.getString("gender"));
            voter.setMaritalStatus(rs.getString("maritalStatus"));
            voter.setAddress(rs.getString("address"));
            voter.setEmail(rs.getString("email"));
            voter.setPhoto(rs.getString("photo"));
            voter.setPassword(rs.getString("password"));
            voter.setPhoneNo(rs.getInt("phoneNo"));
            voterList.add(voter);
        }
        db.close();
        return voterList;
    }

    @Override
    public int insert(Voter t) throws SQLException, ClassNotFoundException {
        String sql = "insert into register_voter( citizenshipNo, uniqueId, firstName, lastName, gender, Age, maritalStatus, address, email, password, confirmPassword,	phoneNo, photo) "
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?)";
        String uniqueID = UUID.randomUUID().toString();
                
        t.setUniqueId(uniqueID);
        t.setPhoto(a);
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, t.getCitizenshipNo());
        stmt.setString(2, t.getUniqueId());
        stmt.setString(3, t.getFirstName());
        stmt.setString(4, t.getLastName());
        stmt.setString(5, t.getGender());
        stmt.setInt(6, t.getAge());
        stmt.setString(7, t.getMaritalStatus());
        stmt.setString(8, t.getAddress());
        stmt.setString(9, t.getEmail());
        stmt.setString(10, t.getPassword());
        stmt.setString(11, t.getConfirmPassword());
        stmt.setInt(12, t.getPhoneNo());
       stmt.setString(13, t.getPhoto());
        int result = db.update();
        db.close();
        return result;

    }

    @Override
    public int delete(Voter t) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    
    public int update(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Voter getById(int id) throws SQLException, ClassNotFoundException {
        String sql = "select * from register_voter where voterId="+id;
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        rs.next();
            Voter voter = new Voter();
            voter.setVoterId(rs.getInt("voterId"));
            voter.setCitizenshipNo(rs.getInt("citizenshipNo"));
            voter.setUniqueId(rs.getString("uniqueId"));
            voter.setFirstName(rs.getString("firstName"));
            voter.setLastName(rs.getString("lastName"));
            voter.setGender(rs.getString("gender"));
            voter.setMaritalStatus(rs.getString("maritalStatus"));
            voter.setAddress(rs.getString("address"));
            voter.setEmail(rs.getString("email"));
            voter.setPhoto(rs.getString("photo"));
            voter.setPassword(rs.getString("password"));
            voter.setPhoneNo(rs.getInt("phoneNo"));
        db.close();
        return voter;
    }

    @Override
    public List<Voter> search(Voter param) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
