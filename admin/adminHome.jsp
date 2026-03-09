<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>IRCTC-Ticket Booking</title>
    <link rel="stylesheet" href="../CSS/bootstrap.css" />
    <link rel="stylesheet" href="../CSS/style.css" />
    <link rel="stylesheet" href="../CSS/registration.css">
    <script src="../JS/bootstrap.js"></script>
    <script src="../JS/script.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.7.2/css/all.min.css"
        integrity="sha512-Evv84Mr4kqVGRNSgIGL/F/aIDqQb7xQ2vcrdIwxfjThSH8CSR7PBEakCr51Ck+w+/U6swU2Im1vVX0SVk9ABhg=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    </head>
    <body>
       <div class="container-fluid">
        <!--navbar-->
        <jsp:include page="navbar.jsp"/>
        <!--navbar end-->
        <%
                   
                      String userId=session.getAttribute("userId").toString();
                  DbManager dm=new DbManager();
                  ResultSet rs=dm.select("select * from registration where Email='"+userId+"'");
                  while(rs.next())
                  {
                      %>
                      <h1 align="center" class=" m-3">Hi, <%=rs.getString("Name")%>. Welcome to IRCTC.</h1>
                    <%
                  }
           %>
           <div class="row mx-auto mt-5">
               <h2 align="center" class=" m-3">Train Details</h2>
               <table border="2"  class="table table-bordered" style="box-shadow: 5px 8px 10px #213D77">
               <tr><th style="background-color: #213D77;color: white;">Sr. No.</th><th style="background-color: #213D77;color: white;">Train No.</th><th style="background-color: #213D77;color: white;">Train Name</th><th style="background-color: #213D77;color: white;">Source</th><th style="background-color: #213D77;color: white;">Destination</th><th style="background-color: #213D77;color: white;">Departure Time</th><th style="background-color: #213D77;color: white;">Arrival Time</th><th style="background-color: #213D77;color: white;">Price per Ticket</th></tr>
           <%     
                  ResultSet td=dm.select("select * from train_details");
                  while(td.next())
                  {
                      %> 
                      <tr><td><%=td.getString("id")%></td><td><%=td.getString("TrainNo")%></td><td><%=td.getString("TrainName")%></td><td><%=td.getString("Source")%></td><td><%=td.getString("Destination")%></td><td><%=td.getString("DepartureTime")%></td><td><%=td.getString("ArrivalTime")%></td><td><%=td.getString("Price")%></td></tr>
                    <%
                  }
           %>
           </table>
           </div>
           <div class="row mx-auto mt-5">
               <h2 align="center" class=" m-3">Feedback/Complaints Details</h2>
               <table border="2"  class="table table-bordered" style="box-shadow: 5px 8px 10px #213D77">
               <tr><th style="background-color: #213D77;color: white;">Sr. No.</th><th style="background-color: #213D77;color: white;">Name</th><th style="background-color: #213D77;color: white;">Mobile</th><th style="background-color: #213D77;color: white;">Mail</th><th style="background-color: #213D77;color: white;">Review Type</th><th style="background-color: #213D77;color: white;">Massage</th><th style="background-color: #213D77;color: white;">Date</th></tr>
           <%     
                  ResultSet cd=dm.select("select * from contact");
                  while(cd.next()){
                  %>
               <tr><td><%=cd.getString("id")%></td><td><%=cd.getString("Name")%></td><td><%=cd.getString("Mobile")%></td><td><%=cd.getString("Mail")%></td><td><%=cd.getString("Type")%></td><td><%=cd.getString("Massage")%></td><td><%=cd.getString("date")%></td></tr>
           <%
                  }
           %>
           </table>
           </div>
    </div>
    </body>
</html>

