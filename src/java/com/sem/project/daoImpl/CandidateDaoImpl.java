/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.daoImpl;

import com.sem.project.dao.CandidateDAO;
import com.sem.project.database.dbConnection;
import com.sem.project.entity.Candidate;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author sapu
 */
public class CandidateDaoImpl implements CandidateDAO {

    dbConnection db = new dbConnection();

    @Override
    public List<Candidate> getALL() throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int insert(Candidate t) throws SQLException, ClassNotFoundException {
        String sql = "insert into register_candidate( age,	citizenshipNo,	firstName,	lastName,	gender,	maritalStatus,	party,	address,	email) values(?,?,?,?,?,?,?,?,?);";
        db.connect();
        
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, t.getAge());
        stmt.setInt(2, t.getCitienshipNo());
        stmt.setString(3, t.getFirstName());
        stmt.setString(4, t.getLastName());
        stmt.setString(5, t.getGender());
        stmt.setString(6, t.getMaritalStatus());
        stmt.setString(7, t.getParty());
        stmt.setString(8, t.getAddress());
        stmt.setString(9, t.getEmail());
        int result = db.update();
        db.close();
       return result;
    }

    @Override
    public int delete(Candidate t) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public Candidate getById(int id) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Candidate> search(Candidate param) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
