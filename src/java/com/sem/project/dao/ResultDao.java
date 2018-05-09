/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.dao;

import com.sem.project.entity.Result;
import java.sql.SQLException;
import java.util.List;

/**
 *
 * @author sapu
 */
public interface ResultDao {

    List<Result> getAll() throws SQLException, ClassNotFoundException;

    int insert(Result r) throws SQLException, ClassNotFoundException;

    int update(int val, int id) throws SQLException, ClassNotFoundException;

    Result getById(int id) throws SQLException, ClassNotFoundException;

}
