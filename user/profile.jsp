<%
    if(session.getAttribute("userId")==null || session.getAttribute("userId")==""){
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
            <!--content-->
            <div class="row mt-5 mb-5">
                <div class="col-sm-5 mx-auto form p-5" style="box-shadow: 5px 8px 10px #213D77">
                    <h2 class="mb-5 text-center"  style="color: #213D77;">Profile</h2><hr>
                     <%
                      String userId=session.getAttribute("userId").toString();
                  DbManager dm=new DbManager();
                  ResultSet rs=dm.select("select * from registration where Email='"+userId+"'");
                  while(rs.next())
                  {
                      %>
                      <div class="row">
                        <div class="box">
                            <label> Name:</label><input type="text" style="width: 85%;"
                                placeholder="<%=rs.getString("Name")%>" readonly>
                        </div>
                        <div class="box">
                            <label> Email:</label><input type="text" style="width: 85%;"
                                placeholder="<%=rs.getString("Email")%>" readonly>
                        </div>
                        <div class="box">
                            <label> Mobile:</label><input type="text" name="oldPwd" style="width: 83%;"
                                placeholder="<%=rs.getString("Mobile")%>" readonly>
                        </div>
                        <div class="box">
                            <label> Date of registration:</label><input type="text" name="oldPwd" style="width: 58%;"
                                placeholder="<%=rs.getString("Date")%>" readonly>
                        </div>
                      </div>
                        <%
                  }
                  %>

                </div>
            </div>
            <!--content end-->
            <!--footer-->
            <jsp:include page="footer.jsp"/>
            <!--footer end-->
        </div>
    </body>

    </html>
<%
    }
%>