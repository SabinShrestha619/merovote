/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.dao.Servlets;

import com.sem.project.dao.CandidateDAO;
import com.sem.project.daoImpl.CandidateDaoImpl;
import com.sem.project.entity.Candidate;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sapu
 */
@WebServlet(urlPatterns = {"/RegisterCandidateServlet"})
public class RegisterCandidateServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        CandidateDAO regDao = new CandidateDaoImpl();
        Candidate candidate = new Candidate();
        try {
            candidate.setCitienshipNo(Integer.parseInt(request.getParameter("citizenshipNo")));
            candidate.setFirstName(request.getParameter("firstName"));
             candidate.setLastName(request.getParameter("lastName"));
            candidate.setEmail(request.getParameter("inputEmail"));
            candidate.setAge(Integer.parseInt(request.getParameter("age")));
            candidate.setParty(request.getParameter("party"));
            candidate.setAddress(request.getParameter("address"));
            candidate.setGender(request.getParameter("genderRadios"));
            candidate.setMaritalStatus(request.getParameter("maritalstatus"));
            try {
                regDao.insert(candidate);
                response.sendRedirect("../merovote/index.jsp");
    
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(RegisterCandidateServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        } catch (SQLException ex) {
            Logger.getLogger(RegisterCandidateServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

