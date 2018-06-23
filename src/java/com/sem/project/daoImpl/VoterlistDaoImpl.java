/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.daoImpl;


import com.sem.project.dao.Voterlist;
import com.sem.project.database.dbConnection;
import com.sem.project.entity.Voter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sapu
 */
public class VoterlistDaoImpl implements Voterlist {

    private dbConnection db = new dbConnection();

    @Override
    public List<Voter> getALL() throws SQLException, ClassNotFoundException {
        List<Voter> voterList = new ArrayList<>();
        String sql = "select * from voterlist";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Voter voter = new Voter();
            voter.setVoterId(rs.getInt("voterId"));
            voterList.add(voter);
        }
        db.close();
        return voterList;
    }

    @Override
    public int insert(Voter t) throws SQLException, ClassNotFoundException {
        String sql = "insert into voterlist( voterId) "
                + "values(?)";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, t.getVoterId());
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
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public List<Voter> search(Voter param) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

}
