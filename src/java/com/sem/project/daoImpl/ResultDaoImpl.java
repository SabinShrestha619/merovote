/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.daoImpl;

import com.sem.project.dao.ResultDao;
import com.sem.project.database.dbConnection;
import com.sem.project.entity.Result;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author sapu
 */
public class ResultDaoImpl implements ResultDao {

    private dbConnection db = new dbConnection();

    @Override
    public List<Result> getAll() throws SQLException, ClassNotFoundException {
        List<Result> resultList = new ArrayList<>();
        String sql = "SELECT * FROM voting_result";
        db.connect();
        db.initStatement(sql);
        ResultSet rs = db.query();
        while (rs.next()) {
            Result result = new Result();
            result.setResultId(rs.getInt("resultId"));
            result.setParty(rs.getString("party"));
            result.setCandidate(rs.getString("candidate"));
            result.setNumberOfVotes(rs.getInt("numberOfVote"));
            resultList.add(result);

        }
        db.close();
        return resultList;

    }

    @Override
    public int insert(Result r) throws SQLException, ClassNotFoundException {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public int update(int val, int id) throws SQLException, ClassNotFoundException {
        String sql = "UPDATE voting_result SET numberOfVote=? where resultId=?";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        Result r = new Result();
        stmt.setInt(1, val);
        stmt.setInt(2, id);
        int result = db.update();
        db.close();
        return result;
    }

    @Override
    public Result getById(int id) throws SQLException, ClassNotFoundException {
        Result result = null;
        String sql = "SELECT * FROM voting_result where resultId=? ";
        db.connect();
        PreparedStatement stmt = db.initStatement(sql);
        stmt.setInt(1, id);
        ResultSet rs = db.query();
        if (rs.next()) {
            result = new Result();
            result.setResultId(rs.getInt("resultId"));
            result.setParty(rs.getString("party"));
            result.setCandidate(rs.getString("candidate"));
            result.setNumberOfVotes(rs.getInt("numberOfVote"));

        }
        db.close();
        return result;

    }

}
