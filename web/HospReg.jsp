<%--
    Document   : HospReg
    Created on : Jun 15, 2017, 12:06:28 PM
    Author     : student
--%>



<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>

<!DOCTYPE html>
<%
   //String HospitalId =session.getAttribute("DispName").toString();
      String HospName=request.getParameter("a");
     out.println(HospName);   
             String Password=request.getParameter("password");
             out.println(Password);
      String Address=request.getParameter("address");
      String City=request.getParameter("city");
      String Country=request.getParameter("country");
      //long ph=Long.parseLong(request.getParameter("phoneno"));
      
      String Status=request.getParameter("status");
      
    
      String Email=request.getParameter("email");
      out.println(HospName);
    
     
     
      
     /*
      try
    {
      //out.print(ph);
      //class.forName("");
      Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudnew","root", ""); 

      out.print("con");
      Statement stmt=con.createStatement();
      String query="insert into hospdetails (DisplayName,Pwd,Address,City,Country,Phone,Status,Email,Role)values('"+HospName+"','"+Password+"','"+Address+"','"+City+"','"+Country+"','8547021455','"+Status+"','"+Email+"','hospital')";
     // int i=stmt.executeUpdate("insert into userdetails (DisplayName,Uname,pwd,BillingAddress,Address,City,Country,phone,status,email)values('"+DispName+"','"+uname+"','"+pwd1+"','"+BillingAddr+"','"+Addr+"','"+city+"','"+country+"','"+phone+"','"+status+"','"+email+"')");
     // String query=stmt.executeUpdate("insert into userdetails (DisplayName,Uname,pwd,BillingAddress,Address,City,Country,phone,status,email)values('DispName','uname','pwd1','BillingAddr','Addr','city','country',976188,'status','email')");
    int i=stmt.executeUpdate(query);
    out.println(HospName);
    out.println(Status);
    
    
     
    if ((i > 0))
    {
        out.print("Registration Successfull!");
        //session.setAttribute("username",uname);
        response.sendRedirect("index.html");
    } 
    else
    {
        out.print("check enter details once more");
        response.sendRedirect("patregister.html");
    }
    }
    catch(Exception e)
    {
        out.println(e);
    }
     */

%>




