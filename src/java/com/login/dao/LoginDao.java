/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.login.dao;

import java.util.logging.Level;
import java.util.logging.Logger;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Jinil
 */
public class LoginDao 
{
    String sql = "select * from hospdetails where Email=? and Pwd=?";
    String sql2 = "select * from patientdetails where Email=? and Password=?";
    String url = "jdbc:mysql://localhost:3306/cloudnew";
    String username = "root";
    String password = "";
    public int check(String uname,String pass)
    {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection con = DriverManager.getConnection(url,username,password);
            PreparedStatement st = con.prepareStatement(sql);
            PreparedStatement st2 = con.prepareStatement(sql2);
            st.setString(1,uname);
            st.setString(2,pass);
            st2.setString(1,uname);
            st2.setString(2,pass);
            ResultSet rs = st.executeQuery();
            ResultSet rs2 = st2.executeQuery();
            if(rs.next())
            {
                 //int flag=1;
                return 1;
               
            }
            else if (rs2.next())
                {
                    return 2;
                }
        } 
        catch (Exception e) {
            e.printStackTrace();
        }
      return 0; 
    }
        
}
