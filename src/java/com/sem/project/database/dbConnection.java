/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.database;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author sapu
 */
public class dbConnection {

    private Connection conn = null;
    private PreparedStatement stmt = null;

    public void connect() throws SQLException, ClassNotFoundException {
        Class.forName("com.mysql.jdbc.Driver");
        conn = DriverManager.getConnection("jdbc:mysql://localhost/merovote", "root", null);
    }

    public PreparedStatement initStatement(String sql) throws ClassNotFoundException, SQLException {
        stmt = conn.prepareStatement(sql);
        return stmt;
    }

    public int update() throws SQLException {
        return stmt.executeUpdate();
    }

    public ResultSet query() throws SQLException {
        return stmt.executeQuery();
    }
    public void close() throws SQLException{
        if(conn!=null&& !conn.isClosed()){
            conn.close();
            conn=null;
    }
    }
}
