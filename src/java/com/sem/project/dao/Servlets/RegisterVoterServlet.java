/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.sem.project.dao.Servlets;

import com.sem.project.dao.VoterDAO;
import com.sem.project.daoImpl.VoterDaoImpl;
import com.sem.project.entity.Voter;
import java.io.IOException;
import java.io.PrintWriter;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author sapu
 */
@WebServlet(urlPatterns = {"/RegisterVoterServlet"})

public class RegisterVoterServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        VoterDaoImpl voterDao = new VoterDaoImpl();
        Voter voter = new Voter();
        String plaintext = request.getParameter("password");
        StringBuilder hash = new StringBuilder();
        try {
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            byte[] hashedBytes = sha.digest(plaintext.getBytes());
            char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'a', 'b', 'c', 'd', 'e', 'f'};
            for (int idx = 0; idx < hashedBytes.length; ++idx) {
                byte b = hashedBytes[idx];
                hash.append(digits[(b & 0xf0) >> 4]);
                hash.append(digits[b & 0x0f]);
            }
        } catch (NoSuchAlgorithmException e) {
            // handle error here.
        }
        try {
            String hashtext = hash.toString();
            voter.setFirstName(request.getParameter("firstName"));
            voter.setLastName(request.getParameter("lastName"));
            voter.setEmail(request.getParameter("inputEmail"));
            voter.setPassword(hashtext);
            voter.setConfirmPassword(request.getParameter("confirmPassword"));
            voter.setPhoneNo(Integer.parseInt(request.getParameter("phoneNumber")));
            //  voter.setYear(Integer.parseInt(request.getParameter("year")));
            voter.setGender(request.getParameter("genderRadios"));

            voterDao.insert(voter);

        } catch (SQLException ex) {
            Logger.getLogger(RegisterVoterServlet.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(RegisterVoterServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}

/*
//@MultipartConfig
public class RegisterVoterServlet extends HttpServlet {

    protected void dopost(HttpServletRequest request, HttpServletResponse response) throws IOException,SQLException,ClassNotFoundException{
             response.setContentType("text/html");

      PrintWriter out = response.getWriter();
      String title = "Using GET Method to Read Form Data";
      String docType =
         "<!doctype html public \"-//w3c//dtd html 4.0 " + "transitional//en\">\n";
         
      out.println(docType +
         "<html>\n" +
            "<head><title>" + title + "</title></head>\n" +
            "<body bgcolor = \"#f0f0f0\">\n" +
               "<h1 align = \"center\">" + title + "</h1>\n" +
               "<ul>\n" +
                  "  <li><b>First Name</b>: "
                  + request.getParameter("first_name") + "\n" +
                  "  <li><b>Last Name</b>: "
                  + request.getParameter("last_name") + "\n" +
               "</ul>\n" +
            "</body> "
                          + "</html>"
      );
 
        /*}

}
 VoterDAO voterDao = new VoterDaoImpl();
        Voter voter = new Voter();
        String plaintext = request.getParameter("password");
        StringBuilder hash = new StringBuilder();
        try {
            MessageDigest sha = MessageDigest.getInstance("SHA-1");
            byte[] hashedBytes = sha.digest(plaintext.getBytes());
            char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9',
                'a', 'b', 'c', 'd', 'e', 'f'};
            for (int idx = 0; idx < hashedBytes.length; ++idx) {
                byte b = hashedBytes[idx];
                hash.append(digits[(b & 0xf0) >> 4]);
                hash.append(digits[b & 0x0f]);
            }
        } catch (NoSuchAlgorithmException e) {
            // handle error here.
        }

        String hashtext = hash.toString();
        voter.setFirstName(request.getParameter("firstName"));
        voter.setLastName(request.getParameter("lastName"));
        voter.setEmail(request.getParameter("inputEmail"));
        voter.setPassword(hashtext);
        voter.setConfirmPassword(request.getParameter("confirmPassword"));
        voter.setPhoneNo(Integer.parseInt(request.getParameter("phoneNumber")));
        //voter.setYear(Integer.parseInt(request.getParameter("year")));
        voter.setGender(request.getParameter("genderRadios"));
        voterDao.insert(voter);
        response.sendRedirect("../index.jsp");
 */
