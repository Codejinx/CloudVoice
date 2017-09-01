<%--
    Document   : HospReg
    Created on : Jun 15, 2017, 12:06:28 PM
    Author     : student
--%>



<%@page import="java.sql.*"%>
<%@page import="java.lang.*"%>
                
              <!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Sign Up</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/5.0.0/normalize.min.css">

  
      <link rel="stylesheet" href="cssregtrial/style.css">

  
</head>

<body>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sign Up Form</title>
        <link rel="stylesheet" href="css/normalize.css">
        <link href='https://fonts.googleapis.com/css?family=Nunito:400,300' rel='stylesheet' type='text/css'>
        <link rel="stylesheet" href="css/main.css">
    </head>
    <body>

      <form action="trialpatreg.jsp" method="post">
      
        <h1>Sign Up</h1>
       
         
          <label for="name">Name:</label>
          <input type="text" id="name" name="patient_name">
          
          <label for="mail">Email:</label>
          <input type="email" id="mail" name="email">
          
          <label for="password">Password:</label>
          <input type="password" id="password" name="password">
          
          <label for="mail">City:</label>
          <input type="text" id="mail" name="city" required>
          
          <label for="mail">Country:</label>
          <input type="text" id="mail" name="country" required>
          
          <label for="name">Address:</label>
          <input type="text" id="name" name="address" required placeholder="Address">
          
          
          <label for="password">Phone number:</label>
          <input type="number" id="password" name="phoneno" required>
          
      
          
         
     
        
       
        <%    
            try
    {
      //out.print(ph);
      //class.forName("");
      Class.forName("com.mysql.jdbc.Driver");
       Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/cloudnew","root", ""); 

      
             Statement stmt=con.createStatement();
      String query="select DisplayName,HospId from hospdetails";
     // int i=stmt.executeUpdate("insert into userdetails (DisplayName,Uname,pwd,BillingAddress,Address,City,Country,phone,status,email)values('"+DispName+"','"+uname+"','"+pwd1+"','"+BillingAddr+"','"+Addr+"','"+city+"','"+country+"','"+phone+"','"+status+"','"+email+"')");
     // String query=stmt.executeUpdate("insert into userdetails (DisplayName,Uname,pwd,BillingAddress,Address,City,Country,phone,status,email)values('DispName','uname','pwd1','BillingAddr','Addr','city','country',976188,'status','email')");
    ResultSet rs = stmt.executeQuery(query);
    %>
    <fieldset>
            
         
 


        <label for="job">Hospital:</label>
        <select id="job" name="pat_hosp">
         
            <option value="-1">Select Hospital</option>
            
    
  <%  
    while(rs.next())
    {
        
    
%>
        
            <option value=" <%=rs.getString("HospId")%>"><%=rs.getString("DisplayName")%> </option>
            
          
        
        
        <%    
}
}
catch(Exception e)
    {
        out.println(e);
    }
     

%>
        </select>
       
          
        
        </fieldset>
        <button type="submit">Sign Up</button>
      </form>
      
</html>

     



 


