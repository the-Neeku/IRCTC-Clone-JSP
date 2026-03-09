<%
if(session.getAttribute("userId")==null || session.getAttribute("userId")=="")
{
response.sendRedirect("../login.jsp");
}
else
{
%>

<%@page import="java.sql.ResultSet"%>
<%@page import="dbpack.DbManager"%>
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
         <div class="row mt-5">
          <div class="col-sm-12">
              <h2 align="center" class=" m-3" style="color: #213D77">My bookings</h2>
              <table class="table table-bordered" style="box-shadow: 5px 8px 10px #213D77">
                  <tr>
                      <th style="background-color: #213D77;color: white;">
                          Name
                      </th>
                       <th style="background-color: #213D77;color: white;">
                          Age
                      </th>
                       <th style="background-color: #213D77;color: white;">
                          Journey Date
                      </th>
                       <th style="background-color: #213D77;color: white;">
                          Price
                      </th style="background-color: #213D77;color: white;">
                       <th style="background-color: #213D77;color: white;">
                          Train Name
                      </th>
                       <th style="background-color: #213D77;color: white;">
                          PNR
                      </th>
                       <th style="background-color: #213D77;color: white;">
                          From
                      </th>
                       <th style="background-color: #213D77;color: white;">
                          To
                      </th>
                       <th style="background-color: #213D77;color: white;">
                          Booking Date
                      </th>
                  </tr>
                  <%
                      String userId=session.getAttribute("userId").toString();
                  DbManager dm=new DbManager();
                  ResultSet rs=dm.select("select * from bookingrecords left join train_details on bookingrecords.trainid=train_details.id where userid='"+userId+"'");
                  while(rs.next())
                  {
                      %>
                      <tr>
                          <td>
                              <%=rs.getString("Name")%>
                          </td>
                          <td>
                              <%=rs.getString("Age")%>
                          </td>
                          <td>
                              <%=rs.getString("JoineryDate")%>
                          </td>
                          <td>
                              <%=rs.getString("Price")%>
                          </td>
                          <td>
                              <%=rs.getString("trainName")%>
                          </td>
                          <td>
                              <%=rs.getString("Pnr")%>
                          </td>
                          <td>
                              <%=rs.getString("Source")%>
                          </td>
                          <td>
                             <%=rs.getString("Destination")%>
                          </td>
                          <td>
                              <%=rs.getString("Date")%>
                          </td>
                      </tr>
                  <%
                  }
                  %>
              </table>
       </div>
           </div>
        <!--footer-->
        <jsp:include page="footer.jsp"/>
        <!--footer end-->
    </div>
</body>

</html>
<%
}
%>