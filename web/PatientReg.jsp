<%--
    Document   : PatientReg
    Created on : Jun 15, 2017, 12:06:28 PM
    Author     : student
--%>


<%@page import="org.apache.tomcat.jni.Address"%>
<%@page import="sun.rmi.transport.Transport"%>
<%@page import="com.sun.xml.internal.messaging.saaj.packaging.mime.MessagingException"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.sun.corba.se.impl.protocol.giopmsgheaders.Message"%>
<%@page import="javax.websocket.Session"%>
<%@page import="java.util.Properties"%>
<%@page import = "java.io.*,java.util.*,javax.mail.*"%>
<%@ page import = "javax.mail.internet.*,javax.activation.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>

<!DOCTYPE html>
<%
   //String HospitalId =session.getAttribute("DispName").toString();
      String PatientName=request.getParameter("patientname");
      String Password=request.getParameter("password");      
     String  Address=request.getParameter("address");
      String City=request.getParameter("city");
      String Country=request.getParameter("country");    
     //long ph=Long.parseLong(request.getParameter("phone"));
      String email=request.getParameter("email");
      
     
      try
    {
      //out.print(ph);
      //class.forName("");
      Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudnew","root", ""); 
       

      out.print("con");
      Statement stmt=con.createStatement();
      String query="insert into patientdetails (PatientName,Password,CurrentAddress,City,Country,Phone,Email,Role)values('"+PatientName+"','"+Password+"','"+Address+"','"+City+"','"+Country+"','8547021455','"+email+"','Patient')";
     // int i=stmt.executeUpdate("insert into userdetails (DisplayName,Uname,pwd,BillingAddress,Address,City,Country,phone,status,email)values('"+DispName+"','"+uname+"','"+pwd1+"','"+BillingAddr+"','"+Addr+"','"+city+"','"+country+"','"+phone+"','"+status+"','"+email+"')");
     // String query=stmt.executeUpdate("insert into userdetails (DisplayName,Uname,pwd,BillingAddress,Address,City,Country,phone,status,email)values('DispName','uname','pwd1','BillingAddr','Addr','city','country',976188,'status','email')");
    int i=stmt.executeUpdate(query);
     
    if ((i > 0))
    {
        out.print("Registration Successfull!");
        //session.setAttribute("username",uname);
        response.sendRedirect("index.html");
    } 
    else
    {
        out.print("check enter details once more");
        response.sendRedirect("PatientReg.html");
    }
    }
    catch(Exception e)
    {
        out.println(e);
    }
     

%>




